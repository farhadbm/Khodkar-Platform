// <auto-generated />
namespace KS.DataAccess.ContentManagementDbContextMigrations
{
    using System.CodeDom.Compiler;
    using System.Data.Entity.Migrations;
    using System.Data.Entity.Migrations.Infrastructure;
    using System.Resources;
    
    [GeneratedCode("EntityFramework.Migrations", "6.1.3-40302")]
    public sealed partial class RemoveThumbnailFromFileAndFilePath : IMigrationMetadata
    {
        private readonly ResourceManager Resources = new ResourceManager(typeof(RemoveThumbnailFromFileAndFilePath));
        
        string IMigrationMetadata.Id
        {
            get { return "201704240500389_RemoveThumbnailFromFileAndFilePath"; }
        }
        
        string IMigrationMetadata.Source
        {
            get { return null; }
        }
        
        string IMigrationMetadata.Target
        {
            get { return Resources.GetString("Target"); }
        }
    }
}