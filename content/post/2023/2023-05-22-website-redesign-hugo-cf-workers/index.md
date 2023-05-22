---
title: Website redesign with Hugo & Cloudflare pages!
description: 'Embracing a new future with Hugo & Cloudflare pages for a personal static site'
image: new_site_nvim.png
categories:
  - Website
tags:
  - Hugo
  - Cloudflare
---

## Introduction
I wanted to give you a quick update about some changes I've made to my website. Previously, my site was built using Jekyll and hosted on GitHub Pages, but I've recently migrated it to a new platform: Hugo, powered by Cloudflare Pages. I wanted to take a moment to explain why I made this switch and how it benefits both me and you as a reader.

## Reason for the Migration
While Jekyll and GitHub Pages served me well, I was looking for a more streamlined and efficient workflow for managing my site. After exploring various options, I decided to switch to Hugo, a static site generator, combined with Cloudflare Pages for hosting and delivery.

Unfortunately, I found that Jekyll was somewhat slow at times and its site methodology required me to bastardise the template quite a bit, leading to it being somewhat painful to work with at times.
I just want to be able to add a new post, save and `git push` it into the ether, with confidence it would be live shortly thereafter.

## Benefits of Hugo and Cloudflare Pages
The move to Hugo and Cloudflare Pages brings several advantages. Firstly, Hugo offers a simpler and faster site building process, allowing me to create and update content more efficiently.  Hugo being written in Go makes it quite a lot quicker than Jekyll's Ruby pipeline (Pity Hugo isnt Rust...)

Cloudflare Pages, on the other hand, offer robust hosting capabilities and improved site delivery. With their global network of servers, my site now loads faster for readers around the world. The combination of Hugo and Cloudflare Pages ensures a seamless browsing experience with minimal downtime.  Cloudflare workers are free for small traffic sites, and has a build pipeline that scans this sites github repo, builds it with a worker immedaitly on push and the new site is live quite quickly.  I can also see a history of commits if I want to check a commit, and even build branches other main so I can adopt a branch -> push to dev -> check it looks OK -> PR for new post.

## CI/CD Workflows and Automation
One of the highlights of this migration is the implementation of strong CI/CD (Continuous Integration/Continuous Deployment) workflows. I've set up automated processes that handle tasks such as building, testing, and deploying my site whenever I make updates. This automation saves me time and ensures that the latest content is always available to you.

## Conclusion
In summary, I've migrated my website from Jekyll/GitHub Pages to Hugo/Cloudflare Pages, aiming for a more efficient and optimized experience. The transition brings benefits like improved performance, streamlined workflows, and automated deployment. I hope you'll enjoy the enhanced browsing experience, and I'm excited to continue sharing great content with you on this shiny new platform.

