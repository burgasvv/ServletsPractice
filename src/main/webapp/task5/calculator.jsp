<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Calculator Servlet</title>
    </head>
    <body>
        <div style="margin-left: 50px; margin-top: 50px; width: 500px; height: 700px" id="calculator">
            <form>
                <div style="display: flex; margin: 10px">
                    <label>
                        <input style="border-radius: 10px; margin-left: 5px; height: 60px; width: 265px; flex: 1; text-align: right; font-size: 30px" type="text" name="display">
                    </label>
                </div>
                <br>
                <div style="margin: 10px">
                    <div style="display: inline">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 129px; height: 60px; border-radius: 10px" name="(" value="(" onclick="display.value += '(' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 129px; height: 60px; border-radius: 10px" name=")" value=")" onclick="display.value += ')' ">
                    </div>
                </div>
                <div style="margin: 10px">
                    <div style="display: inline">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="7" value="7" onclick="display.value += '7' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="8" value="8" onclick="display.value += '8' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="9" value="9" onclick="display.value += '9' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="/" value="/"
                               onclick="display.value += (display.value.toString().charAt(display.value.toString().length-1) === '/' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '*' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '+' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '-' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '.' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '**' ||
                                display.value.toString().charAt(display.value.toString().length-4) === '/') ? '' : '/' ">
                    </div>
                </div>
                <div style="margin: 10px">
                    <div style="display: inline">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="4" value="4" onclick="display.value += '4' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="5" value="5" onclick="display.value += '5' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="6" value="6" onclick="display.value += '6' ">
                        <input type="button"
                               style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="*" value="*"
                               onclick="display.value += (display.value.toString().charAt(display.value.toString().length-1) === '/' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '*' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '+' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '-' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '.' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '**' ||
                                display.value.toString().charAt(display.value.toString().length-4) === '/') ? '' : '*' ">
                    </div>
                </div>
                <div style="margin: 10px">
                    <div style="display: inline">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="1" value="1" onclick="display.value += '1' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="2" value="2" onclick="display.value += '2' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="3" value="3" onclick="display.value += '3' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="-" value="-"
                               onclick="display.value += (display.value.toString().charAt(display.value.toString().length-1) === '/' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '*' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '+' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '-' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '.' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '**' ||
                                display.value.toString().charAt(display.value.toString().length-4) === '/') ? '' : '-' ">
                    </div>
                </div>
                <div style="margin: 10px">
                    <div style="display: inline">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="." value="."
                               onclick="display.value += (display.value.toString().charAt(display.value.toString().length-1) === '/' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '*' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '+' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '-' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '.' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '**' ||
                                display.value.toString().charAt(display.value.toString().length-4) === '/') ? '' : '.' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="0" value="0" onclick="display.value += '0' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="=" value="=" onclick="display.value = eval(display.value)">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="+" value="+"
                               onclick="display.value += (display.value.toString().charAt(display.value.toString().length-1) === '/' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '*' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '+' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '-' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '.' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '**' ||
                                display.value.toString().charAt(display.value.toString().length-4) === '/') ? '' : '+' ">
                    </div>
                </div>
                <div style="margin: 10px">
                    <div style="display: inline">
                        <input type="button" style="font-size: 18px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="clear" value="clear" onclick="display.value = '' ">
                        <input type="button" style="font-size: 18px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="delete" value="delete"
                               onclick="display.value = display.value.toString().slice(0,-1)">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="%" value="%"
                               onclick="display.value += (display.value.toString().charAt(display.value.toString().length-1) === '/' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '*' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '+' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '-' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '.' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '**' ||
                                display.value.toString().charAt(display.value.toString().length-4) === '/') ? '' : '/100' ">
                        <input type="button" style="font-size: 20px; margin-left: 5px; width: 60px; height: 60px; border-radius: 10px" name="**" value="**"
                               onclick="display.value += (display.value.toString().charAt(display.value.toString().length-1) === '/' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '*' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '+' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '-' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '.' ||
                                display.value.toString().charAt(display.value.toString().length-1) === '**' ||
                                display.value.toString().charAt(display.value.toString().length-4) === '/') ? '' : '**' ">
                    </div>
                </div>
            </form>
            <button onclick="history.back()" style="margin-left: 15px; margin-top: 50px; width: 129px; height: 60px; border-radius: 10px" name="back" value="back"><h3> Back</h3></button>

        </div>
    </body>
</html>
