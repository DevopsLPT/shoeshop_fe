const BASE_URL = process.env.REACT_APP_BASE_URL || 'http://localhost:5214/api/'

export const variables = {
  BASE_URL,
  USER_API: `${BASE_URL}user`,
  PRODUCT_API: `${BASE_URL}product`,
  ORDER_API: `${BASE_URL}order`,
  PRODUCTSIZE_API: `${BASE_URL}productsize`,
  ORDERITEM_API: `${BASE_URL}orderitem`,
}
