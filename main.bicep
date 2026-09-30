// 1. スペック（料金プラン）の定義
resource appPlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'taro-app-plan'
  location: 'japanwest'
  sku: {
    name: 'F1' // ここが無料枠（スペック）の指定！
  }
}

// 2. Webサーバー本体の定義
resource myApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'taro-webapp-name'
  location: 'japaneast'
  properties: {
    serverFarmId: appPlan.id // 上で作ったスペックと紐付け
  }
}
