# Material Pack

Google Material Design icons - a comprehensive collection of **2,266 icons** following Google's Material Design guidelines.

## Source

- **Repository**: [google/material-design-icons](https://github.com/google/material-design-icons)
- **Website**: [material.io/icons](https://material.io/icons)
- **License**: Apache License 2.0
- **Style**: Material Design

## Icons

**Total**: 2,266 icons

### Structure

```
material-pack/
├── a/          # Icons starting with 'a'
├── b/          # Icons starting with 'b'
├── c/          # Icons starting with 'c'
└── ...         # Through z/
```

### Icon Categories

| Category | Examples |
|----------|----------|
| Actions | add, check, close, delete, edit, search |
| Communication | email, phone, chat, notification |
| Navigation | arrow-back, arrow-forward, menu, more-vert |
| Social | person, group, share, thumb-up |
| Media | play-arrow, pause, stop, volume-up |
| Devices | phone-android, laptop, tablet, tv |
| File | folder, insert-drive-file, cloud-upload |
| Image | camera, photo-library, crop, brush |
| Maps | location-on, directions, place, my-location |
| Social | favorite, bookmark, star, thumb-up |

### Naming Convention

- **snake_case**: `arrow_down.png`, `check_circle.png`
- **Prefix groups**: `arrow_*`, `file_*`, `image_*`
- **Variants**: `_off`, `_outline`, `_filled`

## Usage

### Direct Image Reference

```html
<img src="material-pack/a/add.png" width="24" height="24" />
<img src="material-pack/a/account_circle.png" width="24" height="24" />
```

### Roblox Integration

Upload the PNG file to Roblox Studio and use the asset ID:

```lua
local img = Instance.new("ImageLabel")
img.Image = "rbxassetid://YOUR_ASSET_ID"
```

## License

Apache License 2.0 - Copyright Google Inc.

See: https://www.apache.org/licenses/LICENSE-2.0
