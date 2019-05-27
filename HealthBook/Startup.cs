using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HealthBook.Startup))]
namespace HealthBook
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
