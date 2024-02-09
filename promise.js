// setTimeout(function(){
//     console.log("Hello World")
// },4000)

// setInterval(function(){
//     document.write("Woow")
// },2000)

// // promise
// let promise = nem Promise(function(resolve,reject){
//     setTimeout(function(){
//         console.log("This is first promise")
//     },2000)
// })

let promiseTwo = new Promise(function(resolve,reject){
    setTimeout(function(){
        resolve({name : "ali" , passwword : "2222"})
    },2000)
})
promiseTwo.then(function(user){
  console.log(user)
})

let promiseThree = new Promise(function(resolve , reject){
    setTimeout(function(){
        resolve({useremail : "Camel" , email : "camel@gmail.com"})
    },2000)

})

promiseThree.then(function(elec){
    return elec.email;
}).then(function(userEmail){
    console.log(userEmail)
})


let promiseFour = new Promise(function(resolve,reject){
    setTimeout(function(){
        let error = false;
        if(!error){
            resolve({name  : "abc" , password : "5544"})
        }
        else{
            reject("Error : something is wrong")
        }
    },4000)
})

promiseFour
.then(function(apple){
    return apple.name
})

.then(function(myName){
    console.log(myName)
})

.then(function(error){
    console.log(error)
})
.finally(function(){
    console.log("Promise Has been!")
})

let promiseFive = new Promise(function(resolve,reject){
    setTimeout(function(){
        let error = false;
        if(!error){
            resolve({name  : "Annual party" , passwordemail : "annual@gmail.com"})
        }
        else{
            reject("Error : something is wrong")
        }
    },3000)
})

async function consumedPromiseFive(){
    try{
        let resp = await promiseFive;
        console.log(resp);
    }
    catch(error){
        console.log(error)
    }
}

consumedPromiseFive()

async function getALLUsers(){
    try{
        let response = await fatch()
        let data = await response.json.();
        document.write(JSON.stringify(data))
    }
    catch(error){
        console.log(error);
    }
}

getAllUsers();