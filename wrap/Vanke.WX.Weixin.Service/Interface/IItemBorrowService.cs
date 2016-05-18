﻿using System.Threading.Tasks;
using EZ.Framework;
using Vanke.WX.Weixin.Data.Entity;

namespace Vanke.WX.Weixin.Service.Interface
{
    public interface IItemBorrowService : ICRUDAsyncService<ItemBorrowHistory>
    {
        Task CancelAsync(object key);
    }
}

