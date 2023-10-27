class TShirt {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  TShirt({required this.name, required this.description, required this.price, required this.imageUrl});
}

List<TShirt> tShirts = [
    TShirt(
      name: 'Classic White T-Shirt',
      description: 'A simple, classic white t-shirt for everyday wear.',
      price: 19.99,
      imageUrl: 'https://printrove.com/wp-content/uploads/2022/10/Oversized-T-shirt-Product-Image.jpeg',
    ),
    TShirt(
      name: 'Graphic Print T-Shirt',
      description: 'A stylish t-shirt with a unique graphic print design.',
      price: 29.99,
      imageUrl: 'https://old.nativeclap.com/wp-content/uploads/2021/10/Bihar-se-hain-Front-Tshirt-Mockup-New-copy-2-680x680.jpg',
    ),
    TShirt(
      name: 'Sporty Black T-Shirt',
      description: 'A sporty black t-shirt for active individuals.',
      price: 24.99,
      imageUrl: 'https://image.spreadshirtmedia.com/image-server/v1/mp/productTypes/812/views/1/appearances/2,width=300,height=300,backgroundColor=f2f2f2.jpg',
    ),
    TShirt(
      name: 'Classic White T-Shirt',
      description: 'A simple, classic white t-shirt for everyday wear.',
      price: 19.99,
      imageUrl: 'https://images.macmerise.com/product/t-shirts/mens/tsmbk5shehzadaprimarylogo.jpg',
    ),
    TShirt(
      name: 'Graphic Print T-Shirt',
      description: 'A stylish t-shirt with a unique graphic print design.',
      price: 29.99,
      imageUrl: 'https://m.media-amazon.com/images/I/B1qmQK-r4OS._AC_CLa%7C2140%2C2000%7C414C9KbAvCL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_UY1000_.png',
    ),
    TShirt(
      name: 'Sporty Black T-Shirt',
      description: 'A sporty black t-shirt for active individuals.',
      price: 24.99,
      imageUrl: 'https://cdn.shopify.com/s/files/1/1883/7851/products/0009_Mid_Heather_Red_22e59680-3e08-4e6a-adb7-63248a08cb6d_720x.jpg',
    ),
  ];