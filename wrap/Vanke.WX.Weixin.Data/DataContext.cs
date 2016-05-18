using System.Data.Entity;
using EZ.Framework.EntityFramework;
using Vanke.WX.Weixin.Data.Entity;

namespace Vanke.WX.Weixin.Data
{
    public partial class DataContext : DbContext, IDataContext
    {
        public DataContext(string connectionName)
            : base("name="+ connectionName)
        {
        }

        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<DinnerPlace> DinnerPlaces { get; set; }
        public virtual DbSet<DinnerRegisterHistory> DinnerRegisterHistories { get; set; }
        public virtual DbSet<DinnerType> DinnerTypes { get; set; }
        public virtual DbSet<EmployeeDiscount> EmployeeDiscounts { get; set; }
        public virtual DbSet<ExternalPersonnelDiningRegisterHistory> ExternalPersonnelDiningRegisterHistories { get; set; }
        public virtual DbSet<Hotel> Hotels { get; set; }
        public virtual DbSet<IdleAsset> IdleAssets { get; set; }
        public virtual DbSet<ItemBorrowHistory> ItemBorrowHistories { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<Staff> Staffs { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DinnerPlace>()
                .HasMany(e => e.DinnerRegisterHistories)
                .WithRequired(e => e.DinnerPlace)
                .HasForeignKey(e => e.PlaceID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DinnerType>()
                .HasMany(e => e.DinnerRegisterHistories)
                .WithRequired(e => e.DinnerType)
                .HasForeignKey(e => e.TypeID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Item>()
                .HasMany(e => e.ItemBorrowHistories)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Staff>()
                .HasMany(e => e.DinnerRegisterHistories)
                .WithRequired(e => e.Staff)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Staff>()
                .HasOptional(e => e.ExternalPersonnelDiningRegisterHistory)
                .WithRequired(e => e.Staff);

            modelBuilder.Entity<Staff>()
                .HasMany(e => e.ItemBorrowHistories)
                .WithRequired(e => e.Staff)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<User>()
                .Property(e => e.LoginName)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.Admins)
                .WithRequired(e => e.User)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.Staffs)
                .WithRequired(e => e.User)
                .WillCascadeOnDelete(false);
        }
    }
}
