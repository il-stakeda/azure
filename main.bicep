// 1. スペック（料金プラン）の定義
resource appPlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'taro-app-plan'
  location: 'japanwest'
  kind: 'linux'
  sku: {
    name: 'F1'
  }
  properties: {
    reserved: true // ここが kind: 'linux' の時だけ必須になる設定です
  }
}

// 2. Webサーバー本体の定義
resource myApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'taro-webapp-cicd2' // ここは世界で1つの名前に変更してください
  location: 'japanwest'
  kind: 'app,linux'
  properties: {
    serverFarmId: appPlan.id
    siteConfig: {
      linuxFxVersion: 'NODE|20-lts'
    }
  }
}
