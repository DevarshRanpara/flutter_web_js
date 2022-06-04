function getPlatform() {
  return navigator.platform;
}

async function jsPromiseFunction(message) {
    let promise = new Promise(function(resolve, reject) {
        setTimeout(function() { resolve(message) }, 3000);
    });
    let result = await promise;
    return result;
}