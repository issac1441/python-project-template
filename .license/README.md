# License Selection Guide

This directory contains common open-source licenses. Choose one that fits your project's needs and copy it to the root `LICENSE` file.

## Quick Comparison

| License | Permissions | Conditions | Commercial Use | Patent Grant |
|---------|-------------|------------|----------------|--------------|
| **MIT** | Very permissive | Attribution only | ✅ Yes | ❌ No |
| **Apache-2.0** | Permissive | Attribution, state changes | ✅ Yes | ✅ Yes |
| **GPL-3.0** | Copyleft | Disclose source, same license | ✅ Yes | ✅ Yes |
| **BSD-3-Clause** | Permissive | Attribution, no endorsement | ✅ Yes | ❌ No |
| **MPL-2.0** | Weak copyleft | Disclose source (file-level) | ✅ Yes | ✅ Yes |
| **Unlicense** | Public domain | None | ✅ Yes | ❌ No |
| **ARL-1.1** | Academic only | Attribution, cite, no commercial | ❌ No | ⚠️ Academic only |

## Detailed Descriptions

### MIT License (`MIT.txt`)
- **Best for**: Maximum adoption, minimal restrictions
- **Key points**: Do whatever you want, just include the license
- **Used by**: jQuery, Rails, Node.js

### Apache License 2.0 (`Apache-2.0.txt`)
- **Best for**: Enterprise-friendly projects needing patent protection
- **Key points**: Patent grant included, must state changes
- **Used by**: Android, Kubernetes, TensorFlow

### GNU GPL v3 (`GPL-3.0.txt`)
- **Best for**: Ensuring derivatives remain open source
- **Key points**: Strong copyleft - derivatives must use GPL
- **Used by**: Linux kernel, WordPress, GIMP

### BSD 3-Clause (`BSD-3-Clause.txt`)
- **Best for**: Similar to MIT with extra protection against name use
- **Key points**: Can't use author names to endorse derivatives
- **Used by**: FreeBSD, Django, Flask

### Mozilla Public License 2.0 (`MPL-2.0.txt`)
- **Best for**: File-level copyleft (weaker than GPL)
- **Key points**: Modified files must be open, but can combine with proprietary code
- **Used by**: Firefox, Thunderbird

### The Unlicense (`Unlicense.txt`)
- **Best for**: Dedicating work to public domain
- **Key points**: No restrictions whatsoever
- **Used by**: youtube-dl (originally)

### Academic Research License v1.1 (`ARL-1.1.txt`)
- **Best for**: Academic projects with commercial licensing option
- **Key points**: Free for research/teaching, commercial use requires separate license
- **Note**: Custom license - consider consulting legal counsel

## How to Use

1. Choose a license from this directory
2. Copy it to the root `LICENSE` file
3. Replace all `<PLACEHOLDER>` values:
   - `<YEAR>` - Current year
   - `<COPYRIGHT_HOLDER>` - Your name or organization
   - `<PROJECT_NAME>` - Your project name (ARL only)
   - `<CONTACT_EMAIL>` - Contact email (ARL only)

## Resources

- [Choose a License](https://choosealicense.com/) - Interactive license chooser
- [SPDX License List](https://spdx.org/licenses/) - Standardized license identifiers
- [Open Source Initiative](https://opensource.org/licenses/) - OSI-approved licenses
