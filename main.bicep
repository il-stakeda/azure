// 1. スペック（料金プラン）の定義
resource appPlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'taro-app-plan'
  location: 'japanwest'
  kind: 'linux' // Linuxであることを明示
  sku: {
    name: 'F1'
  }
  properties: {
    reserved: true // Linuxプランの場合はここをtrueにする必要があります
  }
}

// 2. Webサーバー本体の定義
resource myApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'taro-webapp-name'
  location: 'japanwest'
  kind: 'app,linux' // ここもLinuxであることを明示
  properties: {
    serverFarmId: appPlan.id
    siteConfig: {
      linuxFxVersion: 'NODE|20-lts' // Node.jsを使うことをAzureに教える
    }
  }
}
