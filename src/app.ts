import express,{Request,Response} from 'express';

const app = express();
const PORT = 3000;

app.get('/',(req:Request,res:Response)=>{
    res.send("Hello there");
});

app.post('/login',(req:Request,res:Response)=>{
    const username = req.body;
    res.send(`Hello ${username}`);

})

app.listen(PORT,()=>{
    console.log(`server is running on port ${PORT}`)
})