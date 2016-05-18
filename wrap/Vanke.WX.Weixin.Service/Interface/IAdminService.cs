﻿using System.Collections.Generic;
using System.Threading.Tasks;
using EZ.Framework;
using Vanke.WX.Weixin.Data.Entity;
using Vanke.WX.Weixin.Service.Models;

namespace Vanke.WX.Weixin.Service.Interface
{
    public interface IAdminService : IService
    {
        Task InsertAsync(AdminModel admin);

        Task RemoveAsync(object key);

        Task<IEnumerable<AdminModel>> GetAllAsync();

        Task<AdminModel> GetByKeyAsync(object key);
    }
}
