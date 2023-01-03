---
title: 'Responsive Images in Jekyll'
aliases: /website/jekyll-responsive-images/
description: "How I'm getting responsive images in Jekyll with Jekyll-picture-tag"
image: Code.jpg
categories:
  - Website
tags:
  - Jekyll
toc: false
---

## Responsive images, the Jekyll way

One of the first things I did in my exploration of Jekyll was to go away from using GitHub to generate the site. The first limitation that frustrated me was the inability to use plugins. Currently, I only use one plugin that I couldn't use on GitHub - which relates to responsive images.

I shoot most of my pictures that I'm using for the site on my DSLR - which means I'm getting large pictures. I export from Lightroom via a preset I have setup. However, the process of resizing images for the web is an additional step in publishing a post. I want to be able to toss the image into a folder, type out some text in Notepad++, and upload the site without worrying about image size, resizing, srcset, etc.

Without plugins, this means that all the images you have on your site are going to be resized in the browser - which is a big detractor for page load speed and general usability of the site.

So I set out to find a plugin that would do responsive images (via srcset or picture tags) as well as automatically resizing the images, so I didn't have to worry about anything except the parent image.

## Jekyll-picture-tags

After a bit of searching, I found three candidates for creating responsive images.

- [Jekyll-responsive-images][jekyll-responsive-images]
- [Jekyll-picture-tags][jekyll-picture-tags]
- [Jekyll-srcset][jekyll-srcset]

I found Jekyll-srset broken as of May 2016, and it did not generate multiple images. I couldn't get Jekyll-responsive-images to run properly either.

Jekyll-picture-tags works a treat after some setup. Unfortunately, it has poor error messages (generic Ruby messages) and was tough to debug.

After installing into my `gemfile`, I ended up on the following addition to `_config.yml`

```
picture:
  source: "images"
  output: "images/resize"
  markup: "picture"
  presets:
    default:
      ppi: [1, 1.5, 2.0]
      source_medium:
        media: "(min-width: 40em)"
        width: "600"
      source_default:
        width: "600"
```

{{< hint info >}}
Ensure your indentation is correct if copying a config - misalignment's will give you a dreaded generic error message `Liquid Exception: undefined method [] for nil:NilClass in _drafts/JekyllAnchors.md/#excerpt`
{{< /hint >}}

{{< hint warning >}}
Also ensure your `base-url` in `_config.yml` is set to an empty string "" (`base-url:   ""`). Without this, the images won't be found or load correctly, even if it generates correctly.
{{< /hint >}}

After much fiddling and debugging, I had it working. I decided to add it to my shortcuts in Notepad++ using [FingerText][fingertext]. I came up with the following code, which also allowed me to have an alt and title text in the tag.

FingerText enables me Notepad++ users to write blocks of text with a single keyword (amongst other uses). So now when I type `respimage` with a tab immediately after, the below code will be automatically inserted and the text between `$[![` and `]!]` will be selected upon each tab to allow me to enter the relevant details. Entering an Image Filename (from my /assets/images/ folder) and an Image title defines the image, and the Preset name will tell Jekyll-picture-tag which config branch to run - which dictates the which sets of images to include.

```liquid
{% capture imagesrc %}$[![Image_Filename]!]{% endcapture %}
{% capture imagetitle %}$[![Image_Title]!]{% endcapture %}
<a href="/assets/images/{{ imagesrc }}">{% picture $[![Preset_name]!] {{ imagesrc }} alt="{{ imagetitle }}" title="{{ imagetitle }}" %}</a>
{: .text-center}

```

{{< hint warning >}}
Jekyll-picture-tag also hates spaces in picture filenames. Not that you should have spaces in filenames anyway, but that's another thing I stumbled on.
{{< /hint >}}

I now have images that (should) be responsive for mobile and desktop, and I don't have to do the resizing myself.

[jekyll-responsive-images]: https://github.com/wildlyinaccurate/jekyll-responsive-image
[jekyll-picture-tags]: https://github.com/robwierzbowski/jekyll-picture-tag
[jekyll-srcset]: https://github.com/netlify/jekyll-srcset
[fingertext]: https://github.com/erinata/FingerText
