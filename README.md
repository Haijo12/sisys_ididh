# Roblox Icons Collection

A comprehensive collection of **11,619 PNG icons** from 6 popular open-source icon libraries, organized alphabetically for easy browsing and use in Roblox projects.

## Icon Packs

| Pack | Icons | Source | License |
|------|------:|--------|---------|
| **Lucide Pack** | 1,776 | [lucide.dev](https://lucide.dev) | ISC |
| **Material Pack** | 2,266 | [Google Material Design](https://github.com/google/material-design-icons) | Apache 2.0 |
| **Tabler Pack** | 5,130 | [tabler.io/icons](https://tabler.io/icons) | MIT |
| **Phosphor Pack** | 1,512 | [phosphoricons.com](https://phosphoricons.com) | MIT |
| **Heroicons Pack** | 648 | [heroicons.com](https://heroicons.com) | MIT |
| **Feather Pack** | 287 | [feathericons.com](https://feathericons.com) | MIT |

**Total: 11,619 icons**

## Repository Structure

```
roblox-icons/
├── README.md                  # This file
├── LICENSE                    # ISC License
├── icons-pack/               # All icon packs
│   ├── lucide-pack/          # Lucide icons (1,776)
│   ├── material-pack/        # Material Design icons (2,266)
│   ├── tabler-pack/          # Tabler icons (5,130)
│   ├── phosphor-pack/        # Phosphor icons (1,512)
│   ├── heroicons-pack/       # Heroicons (648)
│   ├── feather-pack/         # Feather icons (287)
│   └── *.md                  # Pack documentation
└── icons-info/               # Icon catalog markdown files
```

## Icon Pack Details

### Lucide Pack
- **Source**: [Lucide](https://lucide.dev) - open-source icon library
- **Icons**: 1,776
- **Style**: Clean, minimal, consistent
- **Colors**: White on transparent
- **Details**: See [icons-pack/lucide-pack.md](icons-pack/lucide-pack.md)

### Material Pack
- **Source**: [Google Material Design Icons](https://github.com/google/material-design-icons)
- **Icons**: 2,266
- **Style**: Google Material Design
- **Colors**: Black on transparent
- **Details**: See [icons-pack/material-pack.md](icons-pack/material-pack.md)

### Tabler Pack
- **Source**: [Tabler Icons](https://tabler.io/icons)
- **Icons**: 5,130
- **Style**: Modern, clean, consistent
- **Colors**: White on transparent
- **Details**: See [icons-pack/tabler-pack.md](icons-pack/tabler-pack.md)

### Phosphor Pack
- **Source**: [Phosphor Icons](https://phosphoricons.com)
- **Icons**: 1,512
- **Style**: Flexible, multiple weights
- **Colors**: White on transparent
- **Details**: See [icons-pack/phosphor-pack.md](icons-pack/phosphor-pack.md)

### Heroicons Pack
- **Source**: [Heroicons](https://heroicons.com) by Tailwind Labs
- **Icons**: 648
- **Style**: Outline + Solid variants
- **Colors**: White on transparent
- **Details**: See [icons-pack/heroicons-pack.md](icons-pack/heroicons-pack.md)

### Feather Pack
- **Source**: [Feather Icons](https://feathericons.com)
- **Icons**: 287
- **Style**: Simple, consistent, minimal
- **Colors**: White on transparent
- **Details**: See [icons-pack/feather-pack.md](icons-pack/feather-pack.md)

## Organization

Each icon pack follows the same structure:

```
pack-name/
├── a/          # Icons starting with 'a'
├── b/          # Icons starting with 'b'
├── c/          # Icons starting with 'c'
└── ...         # Through z/
```

## Usage

### Direct Image Reference

```html
<img src="icons-pack/lucide-pack/a/arrow-down.png" width="24" height="24" />
<img src="icons-pack/material-pack/a/add.png" width="24" height="24" />
```

### Roblox Integration

These PNG icons can be uploaded to Roblox as image assets and used in your games:

1. Upload the PNG file to Roblox Studio
2. Get the asset ID
3. Use in your scripts:
   ```lua
   local img = Instance.new("ImageLabel")
   img.Image = "rbxassetid://YOUR_ASSET_ID"
   ```

## License

This repository contains icons from multiple open-source projects. Each icon pack retains its original license:

- **Lucide**: ISC License
- **Material**: Apache License 2.0
- **Tabler**: MIT License
- **Phosphor**: MIT License
- **Heroicons**: MIT License
- **Feather**: MIT License

See individual pack documentation for full license details.

## Contributing

To add a new icon pack:

1. Download the icons as PNG files
2. Organize them alphabetically in a-z folders
3. Name the folder with `-pack` suffix (e.g., `newicon-pack/`)
4. Create a markdown file with pack details
5. Update this README with the new pack information

## Acknowledgments

Thanks to all the open-source icon library creators for their amazing work:

- [Lucide](https://lucide.dev) - Clean, minimal icons
- [Google Material Design](https://m3.material.io/) - Material Design icons
- [Tabler Icons](https://tabler.io/icons) - Modern icon set
- [Phosphor Icons](https://phosphoricons.com) - Flexible icon family
- [Heroicons](https://heroicons.com) - Beautiful hand-crafted icons
- [Feather Icons](https://feathericons.com) - Simply beautiful icons
