﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Lefarge_FE_App.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DefaultConnectionEF : DbContext
    {
        public DefaultConnectionEF()
            : base("name=DefaultConnectionEF")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<Action_Plan> Action_Plan { get; set; }
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Deficiency> Deficiencies { get; set; }
        public virtual DbSet<Equipment> Equipments { get; set; }
        public virtual DbSet<Heading> Headings { get; set; }
        public virtual DbSet<Picture> Pictures { get; set; }
        public virtual DbSet<Plant> Plants { get; set; }
        public virtual DbSet<Potential_Action_Plans> Potential_Action_Plans { get; set; }
        public virtual DbSet<Potential_Deficiencies> Potential_Deficiencies { get; set; }
        public virtual DbSet<Question> Questions { get; set; }
        public virtual DbSet<Result> Results { get; set; }
    }
}