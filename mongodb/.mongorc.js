// .mongorc.js

// display db name in prompt
prompt = function() {
    if (typeof db == 'undefined') {
        return '(nodb)> ';
    }

    // Check the last db operation
    try {
        db.runCommand({getLastError:1});
    }
    catch (e) {
        print(e);
    }

    return db+"> ";
};


var compliment = ["attractive", "intelligent", "like Batman"];
var index = Math.floor(Math.random()*3);

print("Hello, you're looking particularly "+compliment[index]+" today!");
