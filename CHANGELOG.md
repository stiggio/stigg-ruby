# Changelog

## 0.1.0-alpha.30 (2026-04-28)

Full Changelog: [v0.1.0-alpha.29...v0.1.0-alpha.30](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.29...v0.1.0-alpha.30)

### Features

* support setting headers via env ([8c29e2f](https://github.com/stiggio/stigg-ruby/commit/8c29e2fcbdd7bf7cde22995e5e7676ef8e785472))


### Chores

* **internal:** more robust bootstrap script ([0ebf6af](https://github.com/stiggio/stigg-ruby/commit/0ebf6af806639e8c0f2b2c570ef8dceadda1887c))

## 0.1.0-alpha.29 (2026-04-21)

Full Changelog: [v0.1.0-alpha.28...v0.1.0-alpha.29](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.28...v0.1.0-alpha.29)

### Features

* **api:** add start_date and end_date parameters to credits.get_usage ([6fd528a](https://github.com/stiggio/stigg-ruby/commit/6fd528a895700d6177c7085f1625dcfb42f19480))

## 0.1.0-alpha.28 (2026-04-16)

Full Changelog: [v0.1.0-alpha.27...v0.1.0-alpha.28](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.27...v0.1.0-alpha.28)

### Features

* **api:** add custom currency event types to event_queue_provision/update_params ([363362b](https://github.com/stiggio/stigg-ruby/commit/363362bf8aca1846b69d1f6559b4b9fb2680b20e))
* **api:** add event type enums, remove include_inactive_subscriptions from usage history ([b3080e5](https://github.com/stiggio/stigg-ruby/commit/b3080e58c85c267d25dc10d7144418a0b8a016e8))

## 0.1.0-alpha.27 (2026-04-13)

Full Changelog: [v0.1.0-alpha.26...v0.1.0-alpha.27](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.26...v0.1.0-alpha.27)

### Features

* **api:** add currency resync to event queue, remove include_inactive_subscriptions param ([e8d45d5](https://github.com/stiggio/stigg-ruby/commit/e8d45d5831d7f20ea24c32c20667f8347dba1c8d))

## 0.1.0-alpha.26 (2026-04-09)

Full Changelog: [v0.1.0-alpha.25...v0.1.0-alpha.26](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.25...v0.1.0-alpha.26)

### Features

* **api:** add include_inactive_subscriptions parameter to usage history method ([efced83](https://github.com/stiggio/stigg-ruby/commit/efced83160364c549ecf61ea25e8dfb657232b4c))
* **api:** stainless.yml ([d4c1cca](https://github.com/stiggio/stigg-ruby/commit/d4c1cca413f143cc9d3926c6f8f279dee9e29ea3))


### Bug Fixes

* multipart encoding for file arrays ([d14bf8d](https://github.com/stiggio/stigg-ruby/commit/d14bf8d38ee9f1127f9fc37246ae1e3deec95581))
* **STIGG-7500:** stripe account not deauthorized when connected to multiple environments ([32a5de7](https://github.com/stiggio/stigg-ruby/commit/32a5de727a002863d9f69130722325036c0e3144))

## 0.1.0-alpha.25 (2026-04-06)

Full Changelog: [v0.1.0-alpha.24...v0.1.0-alpha.25](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.24...v0.1.0-alpha.25)

### Features

* **api:** add event_queues and customer integrations endpoints ([9500262](https://github.com/stiggio/stigg-ruby/commit/95002623d816a08a57ed9900f7fe7532869f6ffa))

## 0.1.0-alpha.24 (2026-04-01)

Full Changelog: [v0.1.0-alpha.23...v0.1.0-alpha.24](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.23...v0.1.0-alpha.24)

### Bug Fixes

* align path encoding with RFC 3986 section 3.3 ([c7a2627](https://github.com/stiggio/stigg-ruby/commit/c7a26278759ffabe6190390178e3f65754683920))
* variable name typo ([f7b01b9](https://github.com/stiggio/stigg-ruby/commit/f7b01b9338a55b0dac62f8627184b8bd34f86661))

## 0.1.0-alpha.23 (2026-03-28)

Full Changelog: [v0.1.0-alpha.22...v0.1.0-alpha.23](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.22...v0.1.0-alpha.23)

### Bug Fixes

* **internal:** correct multipart form field name encoding ([47cc751](https://github.com/stiggio/stigg-ruby/commit/47cc75194354b4497727ea305cd28250b08d4f1a))


### Chores

* **ci:** skip lint on metadata-only changes ([472e426](https://github.com/stiggio/stigg-ruby/commit/472e42658cfbc55e298c5f06346a9eaa24229b45))
* **ci:** support opting out of skipping builds on metadata-only commits ([b23f8f6](https://github.com/stiggio/stigg-ruby/commit/b23f8f6f03b70d7c4cfe6e6c7ceb59571babdca2))
* **internal:** update gitignore ([1bc8cd6](https://github.com/stiggio/stigg-ruby/commit/1bc8cd6a761deca466cf0fcd8fa722ce989cd8aa))

## 0.1.0-alpha.22 (2026-03-18)

Full Changelog: [v0.1.0-alpha.21...v0.1.0-alpha.22](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.21...v0.1.0-alpha.22)

### Features

* **api:** api update ([ea636c2](https://github.com/stiggio/stigg-ruby/commit/ea636c22c0da0adc18a52267096faa80b1426807))
* **api:** api update ([6309814](https://github.com/stiggio/stigg-ruby/commit/6309814c61156b49128ce119f3809c81c1bb32af))

## 0.1.0-alpha.21 (2026-03-18)

Full Changelog: [v0.1.0-alpha.20...v0.1.0-alpha.21](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.20...v0.1.0-alpha.21)

### Features

* **api:** api update ([19c4a8d](https://github.com/stiggio/stigg-ruby/commit/19c4a8dffdae186c183be3c5450e4b368ee599e7))
* **api:** api update ([d3d42ce](https://github.com/stiggio/stigg-ruby/commit/d3d42ce11a4ddbde5beaff61dba25267cb3f5059))
* **api:** api update ([2130f77](https://github.com/stiggio/stigg-ruby/commit/2130f77d05a0eaabed89d6378fd3b36470991ba7))
* **api:** api update ([e1a03fa](https://github.com/stiggio/stigg-ruby/commit/e1a03fa307f0580d2dbd026800aa12b793a96852))
* **api:** api update ([19db5a8](https://github.com/stiggio/stigg-ruby/commit/19db5a8d069cbfa6ce7f844b8b9475a66f8a1360))
* **api:** updated stainless config with new endpoint ([fb38dd1](https://github.com/stiggio/stigg-ruby/commit/fb38dd154e6b183cc9186b9c449102cec8de498f))


### Chores

* **internal:** tweak CI branches ([e1072da](https://github.com/stiggio/stigg-ruby/commit/e1072da3748dbe4ae22cee00610f1e13011b43a2))

## 0.1.0-alpha.20 (2026-03-16)

Full Changelog: [v0.1.0-alpha.19...v0.1.0-alpha.20](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.19...v0.1.0-alpha.20)

### Features

* **api:** api update ([ef33da2](https://github.com/stiggio/stigg-ruby/commit/ef33da2d5f54300d97eef131a28a9c69726a1d3e))
* **api:** api update ([84acaa1](https://github.com/stiggio/stigg-ruby/commit/84acaa1d9b59c799b8627578cacc9d760b727469))

## 0.1.0-alpha.19 (2026-03-16)

Full Changelog: [v0.1.0-alpha.18...v0.1.0-alpha.19](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.18...v0.1.0-alpha.19)

### Features

* **api:** api update ([53a5dad](https://github.com/stiggio/stigg-ruby/commit/53a5dadabbfa92086f91cc91326aacad7cf87978))
* **api:** api update ([3c58c09](https://github.com/stiggio/stigg-ruby/commit/3c58c097a4c2890dec60d71fea8e810c00c1cd4b))
* **api:** api update ([754dc4a](https://github.com/stiggio/stigg-ruby/commit/754dc4a855a640fc0bc99c7ef5c84f9dbd881d6a))

## 0.1.0-alpha.18 (2026-03-12)

Full Changelog: [v0.1.0-alpha.17...v0.1.0-alpha.18](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.17...v0.1.0-alpha.18)

### Features

* **api:** api update ([32ec563](https://github.com/stiggio/stigg-ruby/commit/32ec5633137d80d48140023a1485d65f8704f289))

## 0.1.0-alpha.17 (2026-03-09)

Full Changelog: [v0.1.0-alpha.16...v0.1.0-alpha.17](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.16...v0.1.0-alpha.17)

### Features

* **api:** added credits resources ([6a1ed2b](https://github.com/stiggio/stigg-ruby/commit/6a1ed2b48ca5ec828354d37023c14808c1528c8c))
* **api:** api update ([02be640](https://github.com/stiggio/stigg-ruby/commit/02be640e92bd8f24dbe15377d5eb1d47f674d674))
* **api:** api update ([b7bb2b4](https://github.com/stiggio/stigg-ruby/commit/b7bb2b45bcfafa4abc0c9dbb7f03868b96ea6fb5))
* **api:** api update ([84ac4a2](https://github.com/stiggio/stigg-ruby/commit/84ac4a2416ee3bba5ba58d9bd0b30780edc9be34))
* **api:** api update ([bb3faa1](https://github.com/stiggio/stigg-ruby/commit/bb3faa188c87e4873f81dc5a9c0c50121d9aa899))

## 0.1.0-alpha.16 (2026-03-08)

Full Changelog: [v0.1.0-alpha.15...v0.1.0-alpha.16](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.15...v0.1.0-alpha.16)

### Features

* **api:** api update ([e6c7200](https://github.com/stiggio/stigg-ruby/commit/e6c720005b1985d6e0f9bd39adbbf340794d3ed7))


### Chores

* **ci:** skip uploading artifacts on stainless-internal branches ([68ac72b](https://github.com/stiggio/stigg-ruby/commit/68ac72b7571fb1c169831b37a6e26354507640b2))
* **internal:** codegen related update ([1fc5d86](https://github.com/stiggio/stigg-ruby/commit/1fc5d8641e621aa9d02e8a8e91ded525768e01e8))

## 0.1.0-alpha.15 (2026-03-05)

Full Changelog: [v0.1.0-alpha.14...v0.1.0-alpha.15](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.14...v0.1.0-alpha.15)

### Features

* **api:** api update ([8f6f8c5](https://github.com/stiggio/stigg-ruby/commit/8f6f8c5601aa612ea42f29724195b58b59bcff8f))

## 0.1.0-alpha.14 (2026-03-05)

Full Changelog: [v0.1.0-alpha.13...v0.1.0-alpha.14](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.13...v0.1.0-alpha.14)

### Features

* **api:** api update ([e2698c6](https://github.com/stiggio/stigg-ruby/commit/e2698c6d2e1d1df0d8bdcde8d3fe4cc62c0fa5d6))

## 0.1.0-alpha.13 (2026-03-04)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Features

* **api:** api update ([e91a0fb](https://github.com/stiggio/stigg-ruby/commit/e91a0fb516a3500cdbdbe1043de55ba559ec5828))


### Chores

* **ci:** add build step ([3847eba](https://github.com/stiggio/stigg-ruby/commit/3847eba196aa844671cc67d1b5ae13c1146c8bdf))
* **internal:** codegen related update ([d3bc778](https://github.com/stiggio/stigg-ruby/commit/d3bc778b1cfd72d6f27fe65b4565729dc4466400))

## 0.1.0-alpha.12 (2026-03-02)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Features

* **api:** api update ([4d99784](https://github.com/stiggio/stigg-ruby/commit/4d997842856dc0181d9de96f9e4f70ddb20e4f22))

## 0.1.0-alpha.11 (2026-03-02)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Features

* **api:** api update ([51817cd](https://github.com/stiggio/stigg-ruby/commit/51817cd1394d1d76a53b14dac2f31cd38d96e905))

## 0.1.0-alpha.10 (2026-02-27)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Features

* **api:** stainless config updates ([284d27e](https://github.com/stiggio/stigg-ruby/commit/284d27e9a9aafae98308077150fd6e52a87d1f79))
* **api:** update endpoints and models ([d66e0ab](https://github.com/stiggio/stigg-ruby/commit/d66e0ab83327d49bf46e5176d039887fe62167b4))


### Bug Fixes

* properly mock time in ruby ci tests ([d8380cf](https://github.com/stiggio/stigg-ruby/commit/d8380cf43eb12cba1abb6ce9b4ff246095bcecfd))

## 0.1.0-alpha.9 (2026-02-26)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Features

* **api:** api update ([6d00132](https://github.com/stiggio/stigg-ruby/commit/6d0013205c53378a661bcb45e9e3ef61e3e0c45a))

## 0.1.0-alpha.8 (2026-02-22)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Features

* **api:** api update ([26a6fe9](https://github.com/stiggio/stigg-ruby/commit/26a6fe90c9c0791b6146c3f38d1e32dc1fdf9be6))


### Chores

* **internal:** remove mock server code ([32e2c8b](https://github.com/stiggio/stigg-ruby/commit/32e2c8b13ba65c8ef30d465af8e8a482f6454428))
* update mock server docs ([ce8f6f6](https://github.com/stiggio/stigg-ruby/commit/ce8f6f6bf9c074f8fd187c4b71acb11eadda9170))

## 0.1.0-alpha.7 (2026-02-18)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Features

* **api:** Add missing endpoints ([5718d7d](https://github.com/stiggio/stigg-ruby/commit/5718d7d4d7fc34062a4ec6989ded44e4a1e372f2))
* **api:** add plans endpoints, add product_id to addons, update addon/product params ([c11e306](https://github.com/stiggio/stigg-ruby/commit/c11e306ebd5075e7bb2cbbf0263352b73f7a2728))
* **api:** add plans resource, product_id to addon types, remove product duplicate body_id ([e7051c5](https://github.com/stiggio/stigg-ruby/commit/e7051c5680f295dec6db02b169e8d2ab87421c76))
* **api:** api update ([9cca141](https://github.com/stiggio/stigg-ruby/commit/9cca141fa0fe6d740a6b8877b098fb37968ac2a0))
* **api:** api update ([1c17067](https://github.com/stiggio/stigg-ruby/commit/1c17067799ce2cb13ee0783ce7d26223c7023173))
* **api:** api update ([1d6a841](https://github.com/stiggio/stigg-ruby/commit/1d6a8414e23883cdfd8ec0016d4e5e28e4eb87e8))

## 0.1.0-alpha.6 (2026-02-18)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Features

* **api:** manual updates ([b9ca5b0](https://github.com/stiggio/stigg-ruby/commit/b9ca5b002c5008febae30e9b06b30237c5b48331))
* **api:** manual updates ([b9ca5b0](https://github.com/stiggio/stigg-ruby/commit/b9ca5b002c5008febae30e9b06b30237c5b48331))
* **api:** trigger release ([46bc971](https://github.com/stiggio/stigg-ruby/commit/46bc971191c8b10362ef7a9a0a3cf1a7f1cd7305))
* **api:** trigger release ([46bc971](https://github.com/stiggio/stigg-ruby/commit/46bc971191c8b10362ef7a9a0a3cf1a7f1cd7305))

## 0.1.0-alpha.5 (2026-02-18)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Features

* **api:** api update ([0bef237](https://github.com/stiggio/stigg-ruby/commit/0bef2378434fdc6927b6ae047273b1c34fb547a1))
* **api:** api update ([d4ba688](https://github.com/stiggio/stigg-ruby/commit/d4ba6885238b5bf3ec0437e1133190c5ae3c5355))
* **api:** api update ([903d4e3](https://github.com/stiggio/stigg-ruby/commit/903d4e337eee0223e1ee44612ca777f9de7118c2))
* **api:** api update ([4af0ac7](https://github.com/stiggio/stigg-ruby/commit/4af0ac745f7adef0c5b66e4f9265af9e740348a5))
* **api:** api update ([718a775](https://github.com/stiggio/stigg-ruby/commit/718a775adccaff2476c669e85ee2772f85d03e1f))
* **api:** api update ([1f3eea8](https://github.com/stiggio/stigg-ruby/commit/1f3eea8b8ab126fa0a12bf5e82ab39d824a57e63))
* **api:** api update ([0a0a227](https://github.com/stiggio/stigg-ruby/commit/0a0a227db0c6fa21e7f56bfe8711e6ba07561726))
* **api:** api update ([04cfb6e](https://github.com/stiggio/stigg-ruby/commit/04cfb6e36aa1e58887120bec4c4fb6d6094d0ec3))
* **api:** manual updates ([9d0c129](https://github.com/stiggio/stigg-ruby/commit/9d0c129cdf0cfb1b066b5e319449cd9084be1cc6))
* **api:** manual updates ([b39a21d](https://github.com/stiggio/stigg-ruby/commit/b39a21d8b6c8cec17888438066d754c6ffe7e261))
* **api:** manual updates ([9561b08](https://github.com/stiggio/stigg-ruby/commit/9561b082df85dd182f3bf37502bc4062ca4db186))
* **api:** updated the production environment ([fb01745](https://github.com/stiggio/stigg-ruby/commit/fb0174573ad2d4d7e0deb17481ca1c8a31974dfb))


### Chores

* configure new SDK language ([25f1ad3](https://github.com/stiggio/stigg-ruby/commit/25f1ad3a78d40633f7a8fb911799cabf10f6c21f))

## 0.1.0-alpha.4 (2026-02-08)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Features

* **api:** api update ([be82837](https://github.com/stiggio/stigg-ruby/commit/be828376f59cdc953328db6686a68f8b9759451f))
* **api:** api update ([6eba42a](https://github.com/stiggio/stigg-ruby/commit/6eba42a20f428acbd6883681ac5ee11d8a14ff49))
* **api:** api update ([6bce992](https://github.com/stiggio/stigg-ruby/commit/6bce9926ff821e5a0bca13e55bad8c0ab3aa2e47))
* **api:** manual updates ([36853c8](https://github.com/stiggio/stigg-ruby/commit/36853c8baeac42420cd16d77fb7a1deecd202419))
* **api:** manual updates ([687e40e](https://github.com/stiggio/stigg-ruby/commit/687e40ec3f6e37f92942320c4e1f5289b03acf7a))


### Bug Fixes

* **client:** always add content-length to post body, even when empty ([b0dfc8b](https://github.com/stiggio/stigg-ruby/commit/b0dfc8b9bcec28580c67453ad50ad05a059e870a))
* **client:** loosen json header parsing ([818129e](https://github.com/stiggio/stigg-ruby/commit/818129efdba328937836f3e1b5e473a17562bbe1))


### Chores

* **docs:** remove www prefix ([3d79132](https://github.com/stiggio/stigg-ruby/commit/3d7913276fe7a991830af80837e1bb78255930d2))

## 0.1.0-alpha.3 (2026-01-29)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* **api:** update stainless config ([9d48da5](https://github.com/stiggio/stigg-ruby/commit/9d48da56de7780968ac51cdf3f80073bd8f3e7da))

## 0.1.0-alpha.2 (2026-01-28)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/stiggio/stigg-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **api:** api update ([5401740](https://github.com/stiggio/stigg-ruby/commit/5401740b164e4f2e4dfec6b1551d4c6bba400eda))
* **api:** api update ([af0dbbf](https://github.com/stiggio/stigg-ruby/commit/af0dbbfbe7cabffe473c52077d91594b7c4ec181))
* **api:** api update ([985e956](https://github.com/stiggio/stigg-ruby/commit/985e9563afe956a76da955a97571a93ba293b097))
* **api:** api update ([fa4a31b](https://github.com/stiggio/stigg-ruby/commit/fa4a31b7afa59ab427d38557fab38d93ad72ca28))
* **api:** api update ([59c9248](https://github.com/stiggio/stigg-ruby/commit/59c92487bd880f091b5c4411c2c8c15491bc7ec2))
* **api:** comment out promotional endpoints ([3c40e53](https://github.com/stiggio/stigg-ruby/commit/3c40e538184cca72a2048129672b65eb787f466c))
* **api:** improved cursor pagination ([b5650f4](https://github.com/stiggio/stigg-ruby/commit/b5650f4dcd6d97b8539ea76426aece84f8741496))

## 0.1.0-alpha.1 (2026-01-26)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/stiggio/stigg-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** added customer endpoints ([a5fe6f6](https://github.com/stiggio/stigg-ruby/commit/a5fe6f66221c703ce0ffe69d93eb7505006cd26c))
* **api:** api update ([d7837d5](https://github.com/stiggio/stigg-ruby/commit/d7837d555674e47b4ee0acb667d5569910c27299))
* **api:** api update ([325a9aa](https://github.com/stiggio/stigg-ruby/commit/325a9aa56de8a86f733083392dfbcc8f8a23c7a6))
* **api:** api update ([a535a97](https://github.com/stiggio/stigg-ruby/commit/a535a97229a02b99843d9c899ab00d58540a4af8))
* **api:** manual updates ([b546928](https://github.com/stiggio/stigg-ruby/commit/b5469281c5fbbc04008b1e49ae256f524cf59d4e))
* **api:** manual updates ([afc3e12](https://github.com/stiggio/stigg-ruby/commit/afc3e129a5b46165ae5ef48538c74db78b69c2f7))
* **api:** manual updates ([ba96ba4](https://github.com/stiggio/stigg-ruby/commit/ba96ba4cd299ef253d5a6ab365ab27b953ba471d))
* **api:** manual updates ([3486e14](https://github.com/stiggio/stigg-ruby/commit/3486e146b25a9c84c7410006d24b47ba5afac4f8))
* **api:** update via SDK Studio ([85e177a](https://github.com/stiggio/stigg-ruby/commit/85e177a7392c3134fa49c5ab770431251ae959be))
* **api:** update via SDK Studio ([22b7a50](https://github.com/stiggio/stigg-ruby/commit/22b7a50703128cbb6914f90a0ea7a20fb6e465d0))
* **api:** update via SDK Studio ([2ac7af8](https://github.com/stiggio/stigg-ruby/commit/2ac7af8f7b023b88838c117ac11c7df9b201c88f))


### Bug Fixes

* better thread safety via early initializing SSL store during HTTP client creation ([7cf8f10](https://github.com/stiggio/stigg-ruby/commit/7cf8f1001ea1896efa05d10257b9f94e14911aba))
* calling `break` out of streams should be instantaneous ([5baa906](https://github.com/stiggio/stigg-ruby/commit/5baa906da86e8d47a4af8d82a16ae0e7479244a5))
* **internal:** ensure sorbet test always runs serially ([6a262c3](https://github.com/stiggio/stigg-ruby/commit/6a262c361465133cb20c2d2080ea62433a5ded4f))
* issue where json.parse errors when receiving HTTP 204 with nobody ([17f63d2](https://github.com/stiggio/stigg-ruby/commit/17f63d2d5025b2372f61b7ccfbdf52a0f9e89866))


### Chores

* bump dependency version and update sorbet types ([7ab1dcf](https://github.com/stiggio/stigg-ruby/commit/7ab1dcf5c94cadcdd8857601fd6439dc84312709))
* collect metadata from type DSL ([be1c0d7](https://github.com/stiggio/stigg-ruby/commit/be1c0d738855319d1ab96fcfedefd68b3b86a445))
* configure new SDK language ([e267cd7](https://github.com/stiggio/stigg-ruby/commit/e267cd74f323f7bb9cfa84a77589aa64bff6d48c))
* explicitly require "base64" gem ([8f91392](https://github.com/stiggio/stigg-ruby/commit/8f91392fa973fcf024a398556acc8be36228be35))
* fix typo in descriptions ([342c8de](https://github.com/stiggio/stigg-ruby/commit/342c8de73ff6ef1aa6e39ebaa0d7e3f856ea6280))
* **internal:** codegen related update ([08884ec](https://github.com/stiggio/stigg-ruby/commit/08884ec53b56eb05b1f094fe71a183e86d26ea6c))
* **internal:** codegen related update ([e54273a](https://github.com/stiggio/stigg-ruby/commit/e54273a0ac89b6059614c7f22bf431e23f67b90d))
* **internal:** increase visibility of internal helper method ([90ef8db](https://github.com/stiggio/stigg-ruby/commit/90ef8db86b910261891a4c766b03a479f0be47b2))
* **internal:** update `actions/checkout` version ([288d9d3](https://github.com/stiggio/stigg-ruby/commit/288d9d3b6a4ab0271c808b918efe0a98b3cd7fbb))
* **internal:** update comment in script ([a4a4e03](https://github.com/stiggio/stigg-ruby/commit/a4a4e036bcc1448ecef269d0341d58bc522aba74))
* move `cgi` into dependencies for ruby 4 ([f553755](https://github.com/stiggio/stigg-ruby/commit/f55375555cb5a8e5fd15552dc5f7beef61cecf62))
* update @stainless-api/prism-cli to v5.15.0 ([aeb43c8](https://github.com/stiggio/stigg-ruby/commit/aeb43c81a3fcb722aeb3a37cfadb1068b2a6e39e))
* update contribute.md ([16bfcbe](https://github.com/stiggio/stigg-ruby/commit/16bfcbed77346b27a6ee1647a8584a91a033cda0))
* update SDK settings ([d3fe01a](https://github.com/stiggio/stigg-ruby/commit/d3fe01a6342b51cba6b81fdeb18c459185e33a2b))
