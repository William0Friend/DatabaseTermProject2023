using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(jwltfbBikeShopWebSite.Startup))]
namespace jwltfbBikeShopWebSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
