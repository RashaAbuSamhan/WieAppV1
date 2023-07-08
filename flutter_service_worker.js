'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "f089168d3a862e81f8baaa2151fa046a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/lib/asset/121535763_3434832463220195_5380324384471773562_n.jpg": "5debd5e9fd891b557d76c70067e40d74",
"assets/lib/asset/Arduino%2520course%2520(1).jpg": "1e9b3d4c13b48b27b2c0e4e9d6846a02",
"assets/lib/asset/background.jpg": "4516d64b202eb3c8c1868be5762d7834",
"assets/lib/asset/BAU%2520WIE.jpg": "1724dd40b03d26f9534c0117d527dfcd",
"assets/lib/asset/black%2520logo.png": "d4f18fdb170d1d2833305b9f7909f39d",
"assets/lib/asset/Breast%2520Cancer.jpg": "4b110be5330e6c607dcd1da02065bbed",
"assets/lib/asset/c++%2520course%2520.jpg": "f93b693e04c77754b4c5602c8b6607d7",
"assets/lib/asset/control%2520your%2520life.jpg": "432f07e58fbc369a545c13bd1f507f73",
"assets/lib/asset/culutre.jpg": "2bc0b8c7f7bc419bf3017821e57ab91c",
"assets/lib/asset/CV.png": "664fb2ad5b92afb7652bd24d0988e338",
"assets/lib/asset/drawing%25202%2520(3).jpg": "1e96565c3dcd0d9c9feca74ef9979db2",
"assets/lib/asset/drawing%25202.jpg": "9b72fc25bd600000c7d328c946344529",
"assets/lib/asset/drawing%2520my%2520way%25201&2.jpg": "4c0e9586c24adbd3bf73f2fb6da42f31",
"assets/lib/asset/drawing%2520my%2520way1.jpg": "4dcb14835fbb5ba4a2b41e4700e49f3f",
"assets/lib/asset/English%2520course%2520.webp": "a01063ab2dd20581952ad91ee85a442e",
"assets/lib/asset/flutter%2520course%2520(2).jpg": "3705795e736b25b436edd33e07799a42",
"assets/lib/asset/how%2520to%2520be%2520a%2520programmer%2520.jpg": "400a339fc687d7d8be8c064d07aac16d",
"assets/lib/asset/ieee%2520day%2520(1).jpg": "965f5e4ed0cc8acfeb25620ddafd5863",
"assets/lib/asset/noor%2520raqi.png": "4d200224ddbd2be62ce90f4b696537d7",
"assets/lib/asset/noor%2520raqi1.jpg": "ffa8f4eb84b4315b5a52939c61a793e6",
"assets/lib/asset/ola%2520al.png": "407cac89de8e4ab7d2c163822c44de5a",
"assets/lib/asset/ola%2520alramahi.jpg": "a703bada6ae8ce374b14f4d68b416029",
"assets/lib/asset/ola%2520Alramahi.png": "df6a31de45c2f964d26f70432a5147b4",
"assets/lib/asset/PESDay.jpg": "9c543a25a8abccf059c33708c26f1a7a",
"assets/lib/asset/qrcode_web.facebook.com.png": "6f6251e42e87dd25aa74c628fd1ccbda",
"assets/lib/asset/qrcode_www.instagram.com.png": "b487ad3f786d1cdecf146184a5c7ae01",
"assets/lib/asset/qrcode_www.linkedin.com.png": "f45854cfd2f6c86a0d6678c1a1d4b6f4",
"assets/lib/asset/Specturm.JPG": "a474338dc1ebb47c9a0ab8120d1acf71",
"assets/lib/asset/time%2520management%2520(2).jpeg": "8597ee9025b7b270acd7f74e6486fb9e",
"assets/lib/asset/under%2520construction%2520box.png": "8a34466f51132277cfa02363cbbf8d0c",
"assets/lib/asset/under%2520construction%2520woman.jpg": "011846037e19dd9ef0dfbab10da2ba32",
"assets/lib/asset/website%2520course%2520(2).jpg": "7a40e0a9876257757424ea7ad071dd73",
"assets/lib/asset/white%2520logo.png": "e580034a7d32bf41e5b786078823b91d",
"assets/lib/asset/wie.jpg": "7628709c2f93d8de1bd227442148ec72",
"assets/lib/asset/WIE_bannerstand_33x84.jpg": "13bf78c33c2fe4a3b0778fa28113dc1e",
"assets/lib/asset/Zain%2520al.png": "c961eaa0b3dd66b7c36085f8d7c05d4d",
"assets/lib/asset/zain%2520alramahi.jpg": "0ef8801b9def3ab281bce5b296a2d6ce",
"assets/lib/asset/zain%2520Alramahi.png": "a73f2e2ee741f1d696a9cb85713e9657",
"assets/lib/asset/Zain.png": "22fba92b12a68056a9941e9779378490",
"assets/NOTICES": "f37f87301fd96609fd910a212089ee79",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "a04e492a05f9fd1a8cc6f12163b184dd",
"canvaskit/canvaskit.js": "687636ce014616f8b829c44074231939",
"canvaskit/canvaskit.wasm": "d4972dbefe733345d4eabb87d17fcb5f",
"canvaskit/profiling/canvaskit.js": "ba8aac0ba37d0bfa3c9a5f77c761b88b",
"canvaskit/profiling/canvaskit.wasm": "05ad694fda6cfca3f9bbac4b18358f93",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "195f32f4217e034162a6697208586f44",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7696892f20eb3ca5df98d0e08cd33335",
"/": "7696892f20eb3ca5df98d0e08cd33335",
"main.dart.js": "0f24b0c92bee32fdfb965a3810f62baf",
"manifest.json": "d82887f113432b4b5d993191e1a58c7c",
"version.json": "5c18f377c6a1653abcdf85195ee86df3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
