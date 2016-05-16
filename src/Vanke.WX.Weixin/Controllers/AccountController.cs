﻿using System.Threading.Tasks;
using System.Web.Http;
using EZ.Framework.Integration.WebApi;
using Vanke.WX.Weixin.ViewModels;

namespace Vanke.WX.Weixin.Controllers
{
    [RoutePrefix("api/account")]
    [Route("{action}")]
    public class AccountController : GenericApiController
    {
        [AllowAnonymous]
        [HttpPost]
        public object Login(LoginViewModel viewModel)
        {
            var currentLogin = AccountManager.Instance.SignIn(viewModel.LoginName, viewModel.Password);

            return new { Result = currentLogin != null };
        }

        [AllowAnonymous]
        [HttpPost]
        public void Logout()
        {
            AccountManager.Instance.SignOut();
        }
    }
}
