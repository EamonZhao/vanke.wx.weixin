﻿using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.Http;
using EZ.Framework.Integration.WebApi;
using Vanke.WX.Weixin.Common;
using Vanke.WX.Weixin.Data.Entity;
using Vanke.WX.Weixin.Service.Interface;
using Vanke.WX.Weixin.Service.Models;

namespace Vanke.WX.Weixin.Controllers
{
    [RoutePrefix("api/itemborrow")]
    public class ItemBorrowController : GenericApiController
    {
        private readonly IItemBorrowService _itemBorrowService = IoC.Container.GetInstance<IItemBorrowService>();

        /// <summary>
        /// Get all item borrow history
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public async Task<IEnumerable<ItemBorrowModel>> Get()
        {
            return await _itemBorrowService.GetAllItemBorrowHistoryAsync();
        }

        /// <summary>
        /// Borrow item
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("borrow")]
        public async Task Borrow(ItemBorrowHistory entity)
        {
            await _itemBorrowService.InsertAsync(entity);
        }

        /// <summary>
        /// Cancel borrow
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("cancel")]
        public async Task Cancel(object key)
        {
            await _itemBorrowService.CancelAsync(key);
        }
    }
}