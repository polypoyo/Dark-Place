return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 37,
  height = 14,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 9,
  nextobjectid = 48,
  properties = {
    ["border"] = "glow",
    ["music"] = "warphub"
  },
  tilesets = {
    {
      name = "devroom-objects",
      firstgid = 1,
      filename = "../tilesets/devroom-objects.tsx",
      exportfilename = "../tilesets/devroom-objects.lua"
    },
    {
      name = "space",
      firstgid = 52,
      filename = "../tilesets/space.tsx"
    },
    {
      name = "castle",
      firstgid = 64,
      filename = "../tilesets/castle.tsx",
      exportfilename = "../tilesets/castle.lua"
    },
    {
      name = "city_alleyway",
      firstgid = 124,
      filename = "../tilesets/city_alleyway.tsx",
      exportfilename = "../tilesets/city_alleyway.lua"
    },
    {
      name = "woods",
      firstgid = 439,
      filename = "../tilesets/woods.tsx"
    },
    {
      name = "hotland",
      firstgid = 890,
      filename = "../tilesets/hotland.tsx"
    },
    {
      name = "snowdin",
      firstgid = 1178,
      filename = "../tilesets/snowdin.tsx",
      exportfilename = "../tilesets/snowdin.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 37,
      height = 14,
      id = 4,
      name = "dedecal",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 449, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 499, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 265, 452, 0, 0, 499, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 324, 0, 0, 0, 452, 452, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 37,
      height = 14,
      id = 1,
      name = "tiles",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 846, 847, 846, 0, 0,
        0, 0, 52, 53, 53, 53, 53, 53, 53, 53, 53, 53, 54, 0, 0, 0, 52, 53, 53, 53, 53, 53, 53, 53, 54, 0, 0, 0, 0, 0, 0, 0, 846, 847, 843, 0, 0,
        0, 0, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57, 0, 0, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 54, 0, 0, 0, 0, 0, 453, 487, 487, 447, 0, 0,
        0, 0, 55, 56, 56, 56, 56, 56, 56, 56, 74, 64, 57, 0, 0, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 0, 0, 0, 0, 0, 453, 475, 457, 499, 0, 0,
        0, 0, 55, 56, 81, 82, 82, 82, 83, 56, 81, 82, 83, 0, 0, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 0, 0, 0, 0, 0, 453, 477, 448, 458, 0, 0,
        0, 0, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57, 0, 0, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 0, 0, 0, 0, 0, 0, 465, 465, 558, 0, 0,
        0, 0, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 53, 53, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 0, 1613, 1613, 1613, 409, 0, 463, 451, 455, 0, 0,
        0, 0, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 1212, 1212, 1212, 1213, 1038, 896, 951, 952, 953, 0, 0,
        0, 0, 58, 56, 56, 56, 56, 56, 56, 56, 56, 59, 59, 59, 59, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 1178, 1178, 1180, 1246, 1038, 917, 981, 971, 982, 0, 0,
        0, 0, 0, 58, 59, 59, 59, 59, 56, 56, 57, 0, 0, 0, 0, 58, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 1178, 1178, 1178, 1215, 1038, 935, 970, 981, 982, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 55, 56, 57, 0, 0, 0, 0, 0, 55, 56, 56, 56, 56, 56, 56, 56, 56, 59, 2008, 2008, 2008, 1215, 951, 953, 999, 999, 1000, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 55, 56, 57, 0, 0, 0, 0, 0, 58, 59, 56, 56, 56, 56, 56, 59, 60, 0, 2171, 2171, 2171, 2172, 0, 0, 1016, 1017, 1018, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 55, 56, 57, 0, 0, 0, 0, 0, 0, 0, 58, 59, 59, 59, 60, 0, 0, 0, 2204, 2204, 2204, 2071, 0, 0, 1016, 1017, 1018, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 55, 56, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2246, 2246, 2246, 2104, 0, 0, 1034, 1035, 1036, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 37,
      height = 14,
      id = 2,
      name = "decal",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 412, 403, 421, 420, 413, 414, 0, 577, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 427, 431, 433, 435, 428, 429, 0, 614, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 250, 250, 250, 159, 161, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 69, 70, 70, 70, 71, 0, 69, 70, 71, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 250, 250, 294, 251, 0, 814, 786, 0, 0, 0,
        0, 0, 81, 83, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 250, 250, 294, 296, 0, 0, 794, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 159, 161, 161, 219, 424, 464, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1812, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2089, 2090, 2091, 1812, 1010, 1011, 1011, 1011, 1012, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 37,
      height = 14,
      id = 3,
      name = "decal2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 345, 336, 184, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 360, 351, 0, 0, 0, 670, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 304, 305, 0, 0, 670, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 319, 320, 0, 0, 670, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1854, 0, 0, 1844, 1343, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1376, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2157, 0, 0, 1246, 1376, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1991, 2091, 1376, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2171, 1016, 1017, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2204, 1016, 1017, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2246, 1043, 969, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 360,
          width = 40,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 360,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 200,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          class = "",
          shape = "rectangle",
          x = 600,
          y = 400,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          class = "",
          shape = "rectangle",
          x = 640,
          y = 480,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 80,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          class = "",
          shape = "rectangle",
          x = 600,
          y = 40,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          class = "",
          shape = "rectangle",
          x = 640,
          y = 0,
          width = 360,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1000,
          y = 40,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          class = "",
          shape = "rectangle",
          x = 920,
          y = 480,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 520,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1040,
          y = 432,
          width = 360,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1040,
          y = 80,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1120,
          y = 40,
          width = 280,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1400,
          y = 80,
          width = 40,
          height = 360,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          class = "",
          shape = "rectangle",
          x = 280,
          y = 400,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          class = "",
          shape = "rectangle",
          x = 400,
          y = 160,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 160,
          width = 280,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 200,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 360,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "",
          class = "",
          shape = "rectangle",
          x = 120,
          y = 400,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1000,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 21,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* Hey uuhh.. we're closed.",
            ["text2"] = "* So there is like.. nothing to buy.",
            ["text3"] = "* Yeah......",
            ["text4"] = "* These talking signs are WEIRD to use, Right?",
            ["text5"] = "* It's not just me, is it?",
            ["text6"] = "* Im gonna stop talking now."
          }
        },
        {
          id = 31,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 320,
          y = 560,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "warphub",
            ["marker"] = "entry"
          }
        },
        {
          id = 34,
          name = "you_plush",
          class = "",
          shape = "rectangle",
          x = 840,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "you_plush"
          }
        },
        {
          id = 36,
          name = "susie_plush",
          class = "",
          shape = "rectangle",
          x = 680,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "susie_plush"
          }
        },
        {
          id = 37,
          name = "dess_plush",
          class = "",
          shape = "rectangle",
          x = 680,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "dess_plush"
          }
        },
        {
          id = 38,
          name = "jamm_plush",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "jamm_plush"
          }
        },
        {
          id = 39,
          name = "berdly_plush",
          class = "",
          shape = "rectangle",
          x = 760,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "berdly_plush"
          }
        },
        {
          id = 40,
          name = "brandon_plush",
          class = "",
          shape = "rectangle",
          x = 760,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "brandon_plush"
          }
        },
        {
          id = 41,
          name = "kris_plush",
          class = "",
          shape = "rectangle",
          x = 640,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "kris_plush"
          }
        },
        {
          id = 42,
          name = "noelle_plush",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "noelle_plush"
          }
        },
        {
          id = 43,
          name = "robo_susie_plush",
          class = "",
          shape = "rectangle",
          x = 880,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "robo_susie_plush"
          }
        },
        {
          id = 44,
          name = "noyno_plush",
          class = "",
          shape = "rectangle",
          x = 920,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "noyno_plush"
          }
        },
        {
          id = 45,
          name = "starwalker_plush",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "starwalker_plush"
          }
        },
        {
          id = 46,
          name = "mario_plush",
          class = "",
          shape = "rectangle",
          x = 960,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "mario_plush"
          }
        },
        {
          id = 47,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "Plushies Room"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 32,
          name = "entry",
          class = "",
          shape = "point",
          x = 380.667,
          y = 498.348,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 37,
      height = 14,
      id = 6,
      name = "top",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2089, 2090, 1991, 2091, 1010, 1011, 1011, 1011, 1012, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}
