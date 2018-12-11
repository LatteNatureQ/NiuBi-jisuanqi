<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.js"></script>
</head>

<body>
    <div id="app">
        <input type="text" v-model="msg1">
        <select v-model="selectValue">
            <option >+</option>
            <option>-</option>
            <option>*</option>
            <option>/</option>
        </select>
        <input type="text" v-model="msg2">
        <button @click='count'>=</button>
        <input type="text" v-model="result">
    </div>
    <script>
        var vm = new Vue({
            el: '#app',
            data: {
                msg1: '',
                msg2: '',
                result: '',
                selectValue: '+'
            },
            methods: {
                count() {
                    if (this.selectValue == '-') {
                        this.result = parseInt(this.msg1) - parseInt(this.msg2)
                    } else if (this.selectValue == '+') {
                        this.result = parseInt(this.msg1) + parseInt(this.msg2)
                    } else if (this.selectValue == '*') {
                        this.result = parseInt(this.msg1) * parseInt(this.msg2)
                    } else if (this.selectValue == '/') {
                        this.result = parseInt(this.msg1) / parseInt(this.msg2)
                    }
                }
            }
        })
    </script>
</body>

</html>
