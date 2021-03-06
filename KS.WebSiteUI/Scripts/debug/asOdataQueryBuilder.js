﻿//(function ($) {
//	// jQuery plugin definition
//	$.fn.asOdataQueryBuilder = function (params) {
//	    var $query = $(this);


//	    $query.asLoadScriptAndStyle({
//	        urls: [
//	            { url: 'odataquerybuilder/q.js', kind: 'js' },
//	            { url: 'odataquerybuilder/breeze.js', kind: 'js' }
//	        ],
//	        loadedCallback: function() {

//	            //if ($.type(params) === "string") {
//	            //    if (params === "Predicate")
//	            //        return breeze.Predicate
//	            //    else if (params === "EntityQuery")
//	            //        return breeze.EntityQuery
//	            //    else return this
//	            //} else {

//	            if ($.asLoaderCssJs.loadingCssJs.length <= 0) {

//	                console.dir(define["breeze"])
//	                console.dir(define["amd"].breeze)
//	                var checkReady = function (callback) {
                       
//	                    if (require("breeze")) {
//                            console.log("y")
//                            callback(require("breeze"));
//	                    }
//	                    else {
//	                        window.setTimeout(function () { checkReady(callback); }, 100);
//	                    }
//	                };

//	                // Start polling...
//	                checkReady(function (breeze) {

//	                    var context = {}
//	                    var defaultsParam = $.extend({ url: "/odata/cms/" }, params);
//	                    var dataService = new breeze.DataService({
//	                        serviceName: defaultsParam.url,
//	                        hasServerMetadata: false
//	                    });
//	                    context.manager = new breeze.EntityManager({
//	                        dataService: dataService
//	                    });
//	                    context.predicate = breeze.Predicate
//	                    context.entityQuery = breeze.EntityQuery
//	                    defaultsParam.callBack(context)
//	                });


//	            }
//	            //}


//	        }
//	    });


	    //$query.asLoadScriptAndStyle({
	    //    urls: [
	    //        { url: 'odataquerybuilder/q.js', kind: 'js' },
	    //        { url: 'odataquerybuilder/breeze.js', kind: 'js' }
	    //    ],
	    //    loadedCallback: function () {
	    //        // Poll for breeze to come into existance
	    //        var checkReady = function (callback) {
	    //            if (window.breeze) {
	    //                callback(breeze);
	    //            }
	    //            else {
	    //                window.setTimeout(function () { checkReady(callback); }, 100);
	    //            }
	    //        };

	    //        checkReady(function (breeze) {

	    //        });


	    //    }
	    //})
//	};
//})(jQuery);



//define(["jquery","breeze"], // Require jquery
//    function($,breeze) {

//    // jQuery plugin definition
//    $.fn.asOdataQueryBuilder = function (params) {
//        //var $query = $(this);
//        if ($.type(params) === "string") {
//            if (params === "Predicate")
//                return breeze.Predicate
//            else if (params === "EntityQuery")
//                return breeze.EntityQuery
//            else return this
//        } else {

//            var defaultsParam = $.extend({ url: "/odata/cms/" }, params);
//            var dataService = new breeze.DataService({
//                serviceName: defaultsParam.url,
//                hasServerMetadata: false
//            });
//            var manager = new breeze.EntityManager({
//                dataService: dataService
//            });
//            return manager;
//        }
//    };

//    });


$.asOdataQueryBuilder = (function () {
    "use strict";
        return function(params) {
            //var $query = $(this);
            if (typeof params === "string") {
                if (params === "Predicate")
                    return breeze.Predicate
                else if (params === "EntityQuery")
                    return breeze.EntityQuery
                else return this
            } else {

                var defaultsParam = $.extend({ url: "/odata/cms/" }, params);
                var dataService = new breeze.DataService({
                    serviceName: defaultsParam.url,
                    hasServerMetadata: false
                });
                var manager = new breeze.EntityManager({
                    dataService: dataService
                });
                return manager;
            }
        };
    })();



//(function ($) {
//	// jQuery plugin definition
//	$.fn.asOdataQueryBuilder = function (params) {
//	    var $query = $(this);


//	    $query.asLoadScriptAndStyle({
//	        urls: [
//	            { url: 'odataquerybuilder/q.js', kind: 'js' },
//	            { url: 'odataquerybuilder/breeze.js', kind: 'js' }
//	        ],
//	        loadedCallback: function() {

//	            //if ($.type(params) === "string") {
//	            //    if (params === "Predicate")
//	            //        return breeze.Predicate
//	            //    else if (params === "EntityQuery")
//	            //        return breeze.EntityQuery
//	            //    else return this
//	            //} else {

//	            if ($.asLoaderCssJs.loadingCssJs.length <= 0) {
//                    console.log("x")
//	                require(["q","breeze"], // Require jquery
//	                    function(q,breeze) {
//	                        console.log("x")
//	                        var context = {}
//	                        var defaultsParam = $.extend({ url: "/odata/cms/" }, params);
//	                        var dataService = new breeze.DataService({
//	                            serviceName: defaultsParam.url,
//	                            hasServerMetadata: false
//	                        });
//	                        context.manager = new breeze.EntityManager({
//	                            dataService: dataService
//	                        });
//	                        context.predicate = breeze.Predicate
//	                        context.entityQuery = breeze.EntityQuery
//	                        defaultsParam.callBack(context)

//	                    })

//	            }
//	            //}


//	        }
//	    });
//	};
//})(jQuery);
// vim:ts=4:sts=4:sw=4:
/*!
 *
 * Copyright 2009-2012 Kris Kowal under the terms of the MIT
 * license found at http://github.com/kriskowal/q/raw/master/LICENSE
 *
 * With parts by Tyler Close
 * Copyright 2007-2009 Tyler Close under the terms of the MIT X license found
 * at http://www.opensource.org/licenses/mit-license.html
 * Forked at ref_send.js version: 2009-05-11
 *
 * With parts by Mark Miller
 * Copyright (C) 2011 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

(function (definition) {
    "use strict";

    // This file will function properly as a <script> tag, or a module
    // using CommonJS and NodeJS or RequireJS module formats.  In
    // Common/Node/RequireJS, the module exports the Q API and when
    // executed as a simple <script>, it creates a Q global instead.

    // Montage Require
    if (typeof bootstrap === "function") {
        bootstrap("promise", definition);

    // CommonJS
    } else if (typeof exports === "object" && typeof module === "object") {
        module.exports = definition();

    // RequireJS
    } else if (typeof define === "function" && define.amd) {
        define(definition);

    // SES (Secure EcmaScript)
    } else if (typeof ses !== "undefined") {
        if (!ses.ok()) {
            return;
        } else {
            ses.makeQ = definition;
        }

    // <script>
    } else if (typeof window !== "undefined" || typeof self !== "undefined") {
        // Prefer window over self for add-on scripts. Use self for
        // non-windowed contexts.
        var global = typeof window !== "undefined" ? window : self;

        // Get the `window` object, save the previous Q global
        // and initialize Q as a global.
        var previousQ = global.Q;
        global.Q = definition();

        // Add a noConflict function so Q can be removed from the
        // global namespace.
        global.Q.noConflict = function () {
            global.Q = previousQ;
            return this;
        };

    } else {
        throw new Error("This environment was not anticipated by Q. Please file a bug.");
    }

})(function () {
"use strict";

var hasStacks = false;
try {
    throw new Error();
} catch (e) {
    hasStacks = !!e.stack;
}

// All code after this point will be filtered from stack traces reported
// by Q.
var qStartingLine = captureLine();
var qFileName;

// shims

// used for fallback in "allResolved"
var noop = function () {};

// Use the fastest possible means to execute a task in a future turn
// of the event loop.
var nextTick =(function () {
    // linked list of tasks (single, with head node)
    var head = {task: void 0, next: null};
    var tail = head;
    var flushing = false;
    var requestTick = void 0;
    var isNodeJS = false;
    // queue for late tasks, used by unhandled rejection tracking
    var laterQueue = [];

    function flush() {
        /* jshint loopfunc: true */
        var task, domain;

        while (head.next) {
            head = head.next;
            task = head.task;
            head.task = void 0;
            domain = head.domain;

            if (domain) {
                head.domain = void 0;
                domain.enter();
            }
            runSingle(task, domain);

        }
        while (laterQueue.length) {
            task = laterQueue.pop();
            runSingle(task);
        }
        flushing = false;
    }
    // runs a single function in the async queue
    function runSingle(task, domain) {
        try {
            task();

        } catch (e) {
            if (isNodeJS) {
                // In node, uncaught exceptions are considered fatal errors.
                // Re-throw them synchronously to interrupt flushing!

                // Ensure continuation if the uncaught exception is suppressed
                // listening "uncaughtException" events (as domains does).
                // Continue in next event to avoid tick recursion.
                if (domain) {
                    domain.exit();
                }
                setTimeout(flush, 0);
                if (domain) {
                    domain.enter();
                }

                throw e;

            } else {
                // In browsers, uncaught exceptions are not fatal.
                // Re-throw them asynchronously to avoid slow-downs.
                setTimeout(function () {
                    throw e;
                }, 0);
            }
        }

        if (domain) {
            domain.exit();
        }
    }

    nextTick = function (task) {
        tail = tail.next = {
            task: task,
            domain: isNodeJS && process.domain,
            next: null
        };

        if (!flushing) {
            flushing = true;
            requestTick();
        }
    };

    if (typeof process === "object" &&
        process.toString() === "[object process]" && process.nextTick) {
        // Ensure Q is in a real Node environment, with a `process.nextTick`.
        // To see through fake Node environments:
        // * Mocha test runner - exposes a `process` global without a `nextTick`
        // * Browserify - exposes a `process.nexTick` function that uses
        //   `setTimeout`. In this case `setImmediate` is preferred because
        //    it is faster. Browserify's `process.toString()` yields
        //   "[object Object]", while in a real Node environment
        //   `process.nextTick()` yields "[object process]".
        isNodeJS = true;

        requestTick = function () {
            process.nextTick(flush);
        };

    } else if (typeof setImmediate === "function") {
        // In IE10, Node.js 0.9+, or https://github.com/NobleJS/setImmediate
        if (typeof window !== "undefined") {
            requestTick = setImmediate.bind(window, flush);
        } else {
            requestTick = function () {
                setImmediate(flush);
            };
        }

    } else if (typeof MessageChannel !== "undefined") {
        // modern browsers
        // http://www.nonblocking.io/2011/06/windownexttick.html
        var channel = new MessageChannel();
        // At least Safari Version 6.0.5 (8536.30.1) intermittently cannot create
        // working message ports the first time a page loads.
        channel.port1.onmessage = function () {
            requestTick = requestPortTick;
            channel.port1.onmessage = flush;
            flush();
        };
        var requestPortTick = function () {
            // Opera requires us to provide a message payload, regardless of
            // whether we use it.
            channel.port2.postMessage(0);
        };
        requestTick = function () {
            setTimeout(flush, 0);
            requestPortTick();
        };

    } else {
        // old browsers
        requestTick = function () {
            setTimeout(flush, 0);
        };
    }
    // runs a task after all other tasks have been run
    // this is useful for unhandled rejection tracking that needs to happen
    // after all `then`d tasks have been run.
    nextTick.runAfter = function (task) {
        laterQueue.push(task);
        if (!flushing) {
            flushing = true;
            requestTick();
        }
    };
    return nextTick;
})();

// Attempt to make generics safe in the face of downstream
// modifications.
// There is no situation where this is necessary.
// If you need a security guarantee, these primordials need to be
// deeply frozen anyway, and if you don’t need a security guarantee,
// this is just plain paranoid.
// However, this **might** have the nice side-effect of reducing the size of
// the minified code by reducing x.call() to merely x()
// See Mark Miller’s explanation of what this does.
// http://wiki.ecmascript.org/doku.php?id=conventions:safe_meta_programming
var call = Function.call;
function uncurryThis(f) {
    return function () {
        return call.apply(f, arguments);
    };
}
// This is equivalent, but slower:
// uncurryThis = Function_bind.bind(Function_bind.call);
// http://jsperf.com/uncurrythis

var array_slice = uncurryThis(Array.prototype.slice);

var array_reduce = uncurryThis(
    Array.prototype.reduce || function (callback, basis) {
        var index = 0,
            length = this.length;
        // concerning the initial value, if one is not provided
        if (arguments.length === 1) {
            // seek to the first value in the array, accounting
            // for the possibility that is is a sparse array
            do {
                if (index in this) {
                    basis = this[index++];
                    break;
                }
                if (++index >= length) {
                    throw new TypeError();
                }
            } while (1);
        }
        // reduce
        for (; index < length; index++) {
            // account for the possibility that the array is sparse
            if (index in this) {
                basis = callback(basis, this[index], index);
            }
        }
        return basis;
    }
);

var array_indexOf = uncurryThis(
    Array.prototype.indexOf || function (value) {
        // not a very good shim, but good enough for our one use of it
        for (var i = 0; i < this.length; i++) {
            if (this[i] === value) {
                return i;
            }
        }
        return -1;
    }
);

var array_map = uncurryThis(
    Array.prototype.map || function (callback, thisp) {
        var self = this;
        var collect = [];
        array_reduce(self, function (undefined, value, index) {
            collect.push(callback.call(thisp, value, index, self));
        }, void 0);
        return collect;
    }
);

var object_create = Object.create || function (prototype) {
    function Type() { }
    Type.prototype = prototype;
    return new Type();
};

var object_hasOwnProperty = uncurryThis(Object.prototype.hasOwnProperty);

var object_keys = Object.keys || function (object) {
    var keys = [];
    for (var key in object) {
        if (object_hasOwnProperty(object, key)) {
            keys.push(key);
        }
    }
    return keys;
};

var object_toString = uncurryThis(Object.prototype.toString);

function isObject(value) {
    return value === Object(value);
}

// generator related shims

// FIXME: Remove this function once ES6 generators are in SpiderMonkey.
function isStopIteration(exception) {
    return (
        object_toString(exception) === "[object StopIteration]" ||
        exception instanceof QReturnValue
    );
}

// FIXME: Remove this helper and Q.return once ES6 generators are in
// SpiderMonkey.
var QReturnValue;
if (typeof ReturnValue !== "undefined") {
    QReturnValue = ReturnValue;
} else {
    QReturnValue = function (value) {
        this.value = value;
    };
}

// long stack traces

var STACK_JUMP_SEPARATOR = "From previous event:";

function makeStackTraceLong(error, promise) {
    // If possible, transform the error stack trace by removing Node and Q
    // cruft, then concatenating with the stack trace of `promise`. See #57.
    if (hasStacks &&
        promise.stack &&
        typeof error === "object" &&
        error !== null &&
        error.stack &&
        error.stack.indexOf(STACK_JUMP_SEPARATOR) === -1
    ) {
        var stacks = [];
        for (var p = promise; !!p; p = p.source) {
            if (p.stack) {
                stacks.unshift(p.stack);
            }
        }
        stacks.unshift(error.stack);

        var concatedStacks = stacks.join("\n" + STACK_JUMP_SEPARATOR + "\n");
        error.stack = filterStackString(concatedStacks);
    }
}

function filterStackString(stackString) {
    var lines = stackString.split("\n");
    var desiredLines = [];
    for (var i = 0; i < lines.length; ++i) {
        var line = lines[i];

        if (!isInternalFrame(line) && !isNodeFrame(line) && line) {
            desiredLines.push(line);
        }
    }
    return desiredLines.join("\n");
}

function isNodeFrame(stackLine) {
    return stackLine.indexOf("(module.js:") !== -1 ||
           stackLine.indexOf("(node.js:") !== -1;
}

function getFileNameAndLineNumber(stackLine) {
    // Named functions: "at functionName (filename:lineNumber:columnNumber)"
    // In IE10 function name can have spaces ("Anonymous function") O_o
    var attempt1 = /at .+ \((.+):(\d+):(?:\d+)\)$/.exec(stackLine);
    if (attempt1) {
        return [attempt1[1], Number(attempt1[2])];
    }

    // Anonymous functions: "at filename:lineNumber:columnNumber"
    var attempt2 = /at ([^ ]+):(\d+):(?:\d+)$/.exec(stackLine);
    if (attempt2) {
        return [attempt2[1], Number(attempt2[2])];
    }

    // Firefox style: "function@filename:lineNumber or @filename:lineNumber"
    var attempt3 = /.*@(.+):(\d+)$/.exec(stackLine);
    if (attempt3) {
        return [attempt3[1], Number(attempt3[2])];
    }
}

function isInternalFrame(stackLine) {
    var fileNameAndLineNumber = getFileNameAndLineNumber(stackLine);

    if (!fileNameAndLineNumber) {
        return false;
    }

    var fileName = fileNameAndLineNumber[0];
    var lineNumber = fileNameAndLineNumber[1];

    return fileName === qFileName &&
        lineNumber >= qStartingLine &&
        lineNumber <= qEndingLine;
}

// discover own file name and line number range for filtering stack
// traces
function captureLine() {
    if (!hasStacks) {
        return;
    }

    try {
        throw new Error();
    } catch (e) {
        var lines = e.stack.split("\n");
        var firstLine = lines[0].indexOf("@") > 0 ? lines[1] : lines[2];
        var fileNameAndLineNumber = getFileNameAndLineNumber(firstLine);
        if (!fileNameAndLineNumber) {
            return;
        }

        qFileName = fileNameAndLineNumber[0];
        return fileNameAndLineNumber[1];
    }
}

function deprecate(callback, name, alternative) {
    return function () {
        if (typeof console !== "undefined" &&
            typeof console.warn === "function") {
            console.warn(name + " is deprecated, use " + alternative +
                         " instead.", new Error("").stack);
        }
        return callback.apply(callback, arguments);
    };
}

// end of shims
// beginning of real work

/**
 * Constructs a promise for an immediate reference, passes promises through, or
 * coerces promises from different systems.
 * @param value immediate reference or promise
 */
function Q(value) {
    // If the object is already a Promise, return it directly.  This enables
    // the resolve function to both be used to created references from objects,
    // but to tolerably coerce non-promises to promises.
    if (value instanceof Promise) {
        return value;
    }

    // assimilate thenables
    if (isPromiseAlike(value)) {
        return coerce(value);
    } else {
        return fulfill(value);
    }
}
Q.resolve = Q;

/**
 * Performs a task in a future turn of the event loop.
 * @param {Function} task
 */
Q.nextTick = nextTick;

/**
 * Controls whether or not long stack traces will be on
 */
Q.longStackSupport = false;

// enable long stacks if Q_DEBUG is set
if (typeof process === "object" && process && process.env && process.env.Q_DEBUG) {
    Q.longStackSupport = true;
}

/**
 * Constructs a {promise, resolve, reject} object.
 *
 * `resolve` is a callback to invoke with a more resolved value for the
 * promise. To fulfill the promise, invoke `resolve` with any value that is
 * not a thenable. To reject the promise, invoke `resolve` with a rejected
 * thenable, or invoke `reject` with the reason directly. To resolve the
 * promise to another thenable, thus putting it in the same state, invoke
 * `resolve` with that other thenable.
 */
Q.defer = defer;
function defer() {
    // if "messages" is an "Array", that indicates that the promise has not yet
    // been resolved.  If it is "undefined", it has been resolved.  Each
    // element of the messages array is itself an array of complete arguments to
    // forward to the resolved promise.  We coerce the resolution value to a
    // promise using the `resolve` function because it handles both fully
    // non-thenable values and other thenables gracefully.
    var messages = [], progressListeners = [], resolvedPromise;

    var deferred = object_create(defer.prototype);
    var promise = object_create(Promise.prototype);

    promise.promiseDispatch = function (resolve, op, operands) {
        var args = array_slice(arguments);
        if (messages) {
            messages.push(args);
            if (op === "when" && operands[1]) { // progress operand
                progressListeners.push(operands[1]);
            }
        } else {
            Q.nextTick(function () {
                resolvedPromise.promiseDispatch.apply(resolvedPromise, args);
            });
        }
    };

    // XXX deprecated
    promise.valueOf = function () {
        if (messages) {
            return promise;
        }
        var nearerValue = nearer(resolvedPromise);
        if (isPromise(nearerValue)) {
            resolvedPromise = nearerValue; // shorten chain
        }
        return nearerValue;
    };

    promise.inspect = function () {
        if (!resolvedPromise) {
            return { state: "pending" };
        }
        return resolvedPromise.inspect();
    };

    if (Q.longStackSupport && hasStacks) {
        try {
            throw new Error();
        } catch (e) {
            // NOTE: don't try to use `Error.captureStackTrace` or transfer the
            // accessor around; that causes memory leaks as per GH-111. Just
            // reify the stack trace as a string ASAP.
            //
            // At the same time, cut off the first line; it's always just
            // "[object Promise]\n", as per the `toString`.
            promise.stack = e.stack.substring(e.stack.indexOf("\n") + 1);
        }
    }

    // NOTE: we do the checks for `resolvedPromise` in each method, instead of
    // consolidating them into `become`, since otherwise we'd create new
    // promises with the lines `become(whatever(value))`. See e.g. GH-252.

    function become(newPromise) {
        resolvedPromise = newPromise;
        promise.source = newPromise;

        array_reduce(messages, function (undefined, message) {
            Q.nextTick(function () {
                newPromise.promiseDispatch.apply(newPromise, message);
            });
        }, void 0);

        messages = void 0;
        progressListeners = void 0;
    }

    deferred.promise = promise;
    deferred.resolve = function (value) {
        if (resolvedPromise) {
            return;
        }

        become(Q(value));
    };

    deferred.fulfill = function (value) {
        if (resolvedPromise) {
            return;
        }

        become(fulfill(value));
    };
    deferred.reject = function (reason) {
        if (resolvedPromise) {
            return;
        }

        become(reject(reason));
    };
    deferred.notify = function (progress) {
        if (resolvedPromise) {
            return;
        }

        array_reduce(progressListeners, function (undefined, progressListener) {
            Q.nextTick(function () {
                progressListener(progress);
            });
        }, void 0);
    };

    return deferred;
}

/**
 * Creates a Node-style callback that will resolve or reject the deferred
 * promise.
 * @returns a nodeback
 */
defer.prototype.makeNodeResolver = function () {
    var self = this;
    return function (error, value) {
        if (error) {
            self.reject(error);
        } else if (arguments.length > 2) {
            self.resolve(array_slice(arguments, 1));
        } else {
            self.resolve(value);
        }
    };
};

/**
 * @param resolver {Function} a function that returns nothing and accepts
 * the resolve, reject, and notify functions for a deferred.
 * @returns a promise that may be resolved with the given resolve and reject
 * functions, or rejected by a thrown exception in resolver
 */
Q.Promise = promise; // ES6
Q.promise = promise;
function promise(resolver) {
    if (typeof resolver !== "function") {
        throw new TypeError("resolver must be a function.");
    }
    var deferred = defer();
    try {
        resolver(deferred.resolve, deferred.reject, deferred.notify);
    } catch (reason) {
        deferred.reject(reason);
    }
    return deferred.promise;
}

promise.race = race; // ES6
promise.all = all; // ES6
promise.reject = reject; // ES6
promise.resolve = Q; // ES6

// XXX experimental.  This method is a way to denote that a local value is
// serializable and should be immediately dispatched to a remote upon request,
// instead of passing a reference.
Q.passByCopy = function (object) {
    //freeze(object);
    //passByCopies.set(object, true);
    return object;
};

Promise.prototype.passByCopy = function () {
    //freeze(object);
    //passByCopies.set(object, true);
    return this;
};

/**
 * If two promises eventually fulfill to the same value, promises that value,
 * but otherwise rejects.
 * @param x {Any*}
 * @param y {Any*}
 * @returns {Any*} a promise for x and y if they are the same, but a rejection
 * otherwise.
 *
 */
Q.join = function (x, y) {
    return Q(x).join(y);
};

Promise.prototype.join = function (that) {
    return Q([this, that]).spread(function (x, y) {
        if (x === y) {
            // TODO: "===" should be Object.is or equiv
            return x;
        } else {
            throw new Error("Can't join: not the same: " + x + " " + y);
        }
    });
};

/**
 * Returns a promise for the first of an array of promises to become settled.
 * @param answers {Array[Any*]} promises to race
 * @returns {Any*} the first promise to be settled
 */
Q.race = race;
function race(answerPs) {
    return promise(function (resolve, reject) {
        // Switch to this once we can assume at least ES5
        // answerPs.forEach(function (answerP) {
        //     Q(answerP).then(resolve, reject);
        // });
        // Use this in the meantime
        for (var i = 0, len = answerPs.length; i < len; i++) {
            Q(answerPs[i]).then(resolve, reject);
        }
    });
}

Promise.prototype.race = function () {
    return this.then(Q.race);
};

/**
 * Constructs a Promise with a promise descriptor object and optional fallback
 * function.  The descriptor contains methods like when(rejected), get(name),
 * set(name, value), post(name, args), and delete(name), which all
 * return either a value, a promise for a value, or a rejection.  The fallback
 * accepts the operation name, a resolver, and any further arguments that would
 * have been forwarded to the appropriate method above had a method been
 * provided with the proper name.  The API makes no guarantees about the nature
 * of the returned object, apart from that it is usable whereever promises are
 * bought and sold.
 */
Q.makePromise = Promise;
function Promise(descriptor, fallback, inspect) {
    if (fallback === void 0) {
        fallback = function (op) {
            return reject(new Error(
                "Promise does not support operation: " + op
            ));
        };
    }
    if (inspect === void 0) {
        inspect = function () {
            return {state: "unknown"};
        };
    }

    var promise = object_create(Promise.prototype);

    promise.promiseDispatch = function (resolve, op, args) {
        var result;
        try {
            if (descriptor[op]) {
                result = descriptor[op].apply(promise, args);
            } else {
                result = fallback.call(promise, op, args);
            }
        } catch (exception) {
            result = reject(exception);
        }
        if (resolve) {
            resolve(result);
        }
    };

    promise.inspect = inspect;

    // XXX deprecated `valueOf` and `exception` support
    if (inspect) {
        var inspected = inspect();
        if (inspected.state === "rejected") {
            promise.exception = inspected.reason;
        }

        promise.valueOf = function () {
            var inspected = inspect();
            if (inspected.state === "pending" ||
                inspected.state === "rejected") {
                return promise;
            }
            return inspected.value;
        };
    }

    return promise;
}

Promise.prototype.toString = function () {
    return "[object Promise]";
};

Promise.prototype.then = function (fulfilled, rejected, progressed) {
    var self = this;
    var deferred = defer();
    var done = false;   // ensure the untrusted promise makes at most a
                        // single call to one of the callbacks

    function _fulfilled(value) {
        try {
            return typeof fulfilled === "function" ? fulfilled(value) : value;
        } catch (exception) {
            return reject(exception);
        }
    }

    function _rejected(exception) {
        if (typeof rejected === "function") {
            makeStackTraceLong(exception, self);
            try {
                return rejected(exception);
            } catch (newException) {
                return reject(newException);
            }
        }
        return reject(exception);
    }

    function _progressed(value) {
        return typeof progressed === "function" ? progressed(value) : value;
    }

    Q.nextTick(function () {
        self.promiseDispatch(function (value) {
            if (done) {
                return;
            }
            done = true;

            deferred.resolve(_fulfilled(value));
        }, "when", [function (exception) {
            if (done) {
                return;
            }
            done = true;

            deferred.resolve(_rejected(exception));
        }]);
    });

    // Progress propagator need to be attached in the current tick.
    self.promiseDispatch(void 0, "when", [void 0, function (value) {
        var newValue;
        var threw = false;
        try {
            newValue = _progressed(value);
        } catch (e) {
            threw = true;
            if (Q.onerror) {
                Q.onerror(e);
            } else {
                throw e;
            }
        }

        if (!threw) {
            deferred.notify(newValue);
        }
    }]);

    return deferred.promise;
};

Q.tap = function (promise, callback) {
    return Q(promise).tap(callback);
};

/**
 * Works almost like "finally", but not called for rejections.
 * Original resolution value is passed through callback unaffected.
 * Callback may return a promise that will be awaited for.
 * @param {Function} callback
 * @returns {Q.Promise}
 * @example
 * doSomething()
 *   .then(...)
 *   .tap(console.log)
 *   .then(...);
 */
Promise.prototype.tap = function (callback) {
    callback = Q(callback);

    return this.then(function (value) {
        return callback.fcall(value).thenResolve(value);
    });
};

/**
 * Registers an observer on a promise.
 *
 * Guarantees:
 *
 * 1. that fulfilled and rejected will be called only once.
 * 2. that either the fulfilled callback or the rejected callback will be
 *    called, but not both.
 * 3. that fulfilled and rejected will not be called in this turn.
 *
 * @param value      promise or immediate reference to observe
 * @param fulfilled  function to be called with the fulfilled value
 * @param rejected   function to be called with the rejection exception
 * @param progressed function to be called on any progress notifications
 * @return promise for the return value from the invoked callback
 */
Q.when = when;
function when(value, fulfilled, rejected, progressed) {
    return Q(value).then(fulfilled, rejected, progressed);
}

Promise.prototype.thenResolve = function (value) {
    return this.then(function () { return value; });
};

Q.thenResolve = function (promise, value) {
    return Q(promise).thenResolve(value);
};

Promise.prototype.thenReject = function (reason) {
    return this.then(function () { throw reason; });
};

Q.thenReject = function (promise, reason) {
    return Q(promise).thenReject(reason);
};

/**
 * If an object is not a promise, it is as "near" as possible.
 * If a promise is rejected, it is as "near" as possible too.
 * If it’s a fulfilled promise, the fulfillment value is nearer.
 * If it’s a deferred promise and the deferred has been resolved, the
 * resolution is "nearer".
 * @param object
 * @returns most resolved (nearest) form of the object
 */

// XXX should we re-do this?
Q.nearer = nearer;
function nearer(value) {
    if (isPromise(value)) {
        var inspected = value.inspect();
        if (inspected.state === "fulfilled") {
            return inspected.value;
        }
    }
    return value;
}

/**
 * @returns whether the given object is a promise.
 * Otherwise it is a fulfilled value.
 */
Q.isPromise = isPromise;
function isPromise(object) {
    return object instanceof Promise;
}

Q.isPromiseAlike = isPromiseAlike;
function isPromiseAlike(object) {
    return isObject(object) && typeof object.then === "function";
}

/**
 * @returns whether the given object is a pending promise, meaning not
 * fulfilled or rejected.
 */
Q.isPending = isPending;
function isPending(object) {
    return isPromise(object) && object.inspect().state === "pending";
}

Promise.prototype.isPending = function () {
    return this.inspect().state === "pending";
};

/**
 * @returns whether the given object is a value or fulfilled
 * promise.
 */
Q.isFulfilled = isFulfilled;
function isFulfilled(object) {
    return !isPromise(object) || object.inspect().state === "fulfilled";
}

Promise.prototype.isFulfilled = function () {
    return this.inspect().state === "fulfilled";
};

/**
 * @returns whether the given object is a rejected promise.
 */
Q.isRejected = isRejected;
function isRejected(object) {
    return isPromise(object) && object.inspect().state === "rejected";
}

Promise.prototype.isRejected = function () {
    return this.inspect().state === "rejected";
};

//// BEGIN UNHANDLED REJECTION TRACKING

// This promise library consumes exceptions thrown in handlers so they can be
// handled by a subsequent promise.  The exceptions get added to this array when
// they are created, and removed when they are handled.  Note that in ES6 or
// shimmed environments, this would naturally be a `Set`.
var unhandledReasons = [];
var unhandledRejections = [];
var reportedUnhandledRejections = [];
var trackUnhandledRejections = true;

function resetUnhandledRejections() {
    unhandledReasons.length = 0;
    unhandledRejections.length = 0;

    if (!trackUnhandledRejections) {
        trackUnhandledRejections = true;
    }
}

function trackRejection(promise, reason) {
    if (!trackUnhandledRejections) {
        return;
    }
    if (typeof process === "object" && typeof process.emit === "function") {
        Q.nextTick.runAfter(function () {
            if (array_indexOf(unhandledRejections, promise) !== -1) {
                process.emit("unhandledRejection", reason, promise);
                reportedUnhandledRejections.push(promise);
            }
        });
    }

    unhandledRejections.push(promise);
    if (reason && typeof reason.stack !== "undefined") {
        unhandledReasons.push(reason.stack);
    } else {
        unhandledReasons.push("(no stack) " + reason);
    }
}

function untrackRejection(promise) {
    if (!trackUnhandledRejections) {
        return;
    }

    var at = array_indexOf(unhandledRejections, promise);
    if (at !== -1) {
        if (typeof process === "object" && typeof process.emit === "function") {
            Q.nextTick.runAfter(function () {
                var atReport = array_indexOf(reportedUnhandledRejections, promise);
                if (atReport !== -1) {
                    process.emit("rejectionHandled", unhandledReasons[at], promise);
                    reportedUnhandledRejections.splice(atReport, 1);
                }
            });
        }
        unhandledRejections.splice(at, 1);
        unhandledReasons.splice(at, 1);
    }
}

Q.resetUnhandledRejections = resetUnhandledRejections;

Q.getUnhandledReasons = function () {
    // Make a copy so that consumers can't interfere with our internal state.
    return unhandledReasons.slice();
};

Q.stopUnhandledRejectionTracking = function () {
    resetUnhandledRejections();
    trackUnhandledRejections = false;
};

resetUnhandledRejections();

//// END UNHANDLED REJECTION TRACKING

/**
 * Constructs a rejected promise.
 * @param reason value describing the failure
 */
Q.reject = reject;
function reject(reason) {
    var rejection = Promise({
        "when": function (rejected) {
            // note that the error has been handled
            if (rejected) {
                untrackRejection(this);
            }
            return rejected ? rejected(reason) : this;
        }
    }, function fallback() {
        return this;
    }, function inspect() {
        return { state: "rejected", reason: reason };
    });

    // Note that the reason has not been handled.
    trackRejection(rejection, reason);

    return rejection;
}

/**
 * Constructs a fulfilled promise for an immediate reference.
 * @param value immediate reference
 */
Q.fulfill = fulfill;
function fulfill(value) {
    return Promise({
        "when": function () {
            return value;
        },
        "get": function (name) {
            return value[name];
        },
        "set": function (name, rhs) {
            value[name] = rhs;
        },
        "delete": function (name) {
            delete value[name];
        },
        "post": function (name, args) {
            // Mark Miller proposes that post with no name should apply a
            // promised function.
            if (name === null || name === void 0) {
                return value.apply(void 0, args);
            } else {
                return value[name].apply(value, args);
            }
        },
        "apply": function (thisp, args) {
            return value.apply(thisp, args);
        },
        "keys": function () {
            return object_keys(value);
        }
    }, void 0, function inspect() {
        return { state: "fulfilled", value: value };
    });
}

/**
 * Converts thenables to Q promises.
 * @param promise thenable promise
 * @returns a Q promise
 */
function coerce(promise) {
    var deferred = defer();
    Q.nextTick(function () {
        try {
            promise.then(deferred.resolve, deferred.reject, deferred.notify);
        } catch (exception) {
            deferred.reject(exception);
        }
    });
    return deferred.promise;
}

/**
 * Annotates an object such that it will never be
 * transferred away from this process over any promise
 * communication channel.
 * @param object
 * @returns promise a wrapping of that object that
 * additionally responds to the "isDef" message
 * without a rejection.
 */
Q.master = master;
function master(object) {
    return Promise({
        "isDef": function () {}
    }, function fallback(op, args) {
        return dispatch(object, op, args);
    }, function () {
        return Q(object).inspect();
    });
}

/**
 * Spreads the values of a promised array of arguments into the
 * fulfillment callback.
 * @param fulfilled callback that receives variadic arguments from the
 * promised array
 * @param rejected callback that receives the exception if the promise
 * is rejected.
 * @returns a promise for the return value or thrown exception of
 * either callback.
 */
Q.spread = spread;
function spread(value, fulfilled, rejected) {
    return Q(value).spread(fulfilled, rejected);
}

Promise.prototype.spread = function (fulfilled, rejected) {
    return this.all().then(function (array) {
        return fulfilled.apply(void 0, array);
    }, rejected);
};

/**
 * The async function is a decorator for generator functions, turning
 * them into asynchronous generators.  Although generators are only part
 * of the newest ECMAScript 6 drafts, this code does not cause syntax
 * errors in older engines.  This code should continue to work and will
 * in fact improve over time as the language improves.
 *
 * ES6 generators are currently part of V8 version 3.19 with the
 * --harmony-generators runtime flag enabled.  SpiderMonkey has had them
 * for longer, but under an older Python-inspired form.  This function
 * works on both kinds of generators.
 *
 * Decorates a generator function such that:
 *  - it may yield promises
 *  - execution will continue when that promise is fulfilled
 *  - the value of the yield expression will be the fulfilled value
 *  - it returns a promise for the return value (when the generator
 *    stops iterating)
 *  - the decorated function returns a promise for the return value
 *    of the generator or the first rejected promise among those
 *    yielded.
 *  - if an error is thrown in the generator, it propagates through
 *    every following yield until it is caught, or until it escapes
 *    the generator function altogether, and is translated into a
 *    rejection for the promise returned by the decorated generator.
 */
Q.async = async;
function async(makeGenerator) {
    return function () {
        // when verb is "send", arg is a value
        // when verb is "throw", arg is an exception
        function continuer(verb, arg) {
            var result;

            // Until V8 3.19 / Chromium 29 is released, SpiderMonkey is the only
            // engine that has a deployed base of browsers that support generators.
            // However, SM's generators use the Python-inspired semantics of
            // outdated ES6 drafts.  We would like to support ES6, but we'd also
            // like to make it possible to use generators in deployed browsers, so
            // we also support Python-style generators.  At some point we can remove
            // this block.

            if (typeof StopIteration === "undefined") {
                // ES6 Generators
                try {
                    result = generator[verb](arg);
                } catch (exception) {
                    return reject(exception);
                }
                if (result.done) {
                    return Q(result.value);
                } else {
                    return when(result.value, callback, errback);
                }
            } else {
                // SpiderMonkey Generators
                // FIXME: Remove this case when SM does ES6 generators.
                try {
                    result = generator[verb](arg);
                } catch (exception) {
                    if (isStopIteration(exception)) {
                        return Q(exception.value);
                    } else {
                        return reject(exception);
                    }
                }
                return when(result, callback, errback);
            }
        }
        var generator = makeGenerator.apply(this, arguments);
        var callback = continuer.bind(continuer, "next");
        var errback = continuer.bind(continuer, "throw");
        return callback();
    };
}

/**
 * The spawn function is a small wrapper around async that immediately
 * calls the generator and also ends the promise chain, so that any
 * unhandled errors are thrown instead of forwarded to the error
 * handler. This is useful because it's extremely common to run
 * generators at the top-level to work with libraries.
 */
Q.spawn = spawn;
function spawn(makeGenerator) {
    Q.done(Q.async(makeGenerator)());
}

// FIXME: Remove this interface once ES6 generators are in SpiderMonkey.
/**
 * Throws a ReturnValue exception to stop an asynchronous generator.
 *
 * This interface is a stop-gap measure to support generator return
 * values in older Firefox/SpiderMonkey.  In browsers that support ES6
 * generators like Chromium 29, just use "return" in your generator
 * functions.
 *
 * @param value the return value for the surrounding generator
 * @throws ReturnValue exception with the value.
 * @example
 * // ES6 style
 * Q.async(function* () {
 *      var foo = yield getFooPromise();
 *      var bar = yield getBarPromise();
 *      return foo + bar;
 * })
 * // Older SpiderMonkey style
 * Q.async(function () {
 *      var foo = yield getFooPromise();
 *      var bar = yield getBarPromise();
 *      Q.return(foo + bar);
 * })
 */
Q["return"] = _return;
function _return(value) {
    throw new QReturnValue(value);
}

/**
 * The promised function decorator ensures that any promise arguments
 * are settled and passed as values (`this` is also settled and passed
 * as a value).  It will also ensure that the result of a function is
 * always a promise.
 *
 * @example
 * var add = Q.promised(function (a, b) {
 *     return a + b;
 * });
 * add(Q(a), Q(B));
 *
 * @param {function} callback The function to decorate
 * @returns {function} a function that has been decorated.
 */
Q.promised = promised;
function promised(callback) {
    return function () {
        return spread([this, all(arguments)], function (self, args) {
            return callback.apply(self, args);
        });
    };
}

/**
 * sends a message to a value in a future turn
 * @param object* the recipient
 * @param op the name of the message operation, e.g., "when",
 * @param args further arguments to be forwarded to the operation
 * @returns result {Promise} a promise for the result of the operation
 */
Q.dispatch = dispatch;
function dispatch(object, op, args) {
    return Q(object).dispatch(op, args);
}

Promise.prototype.dispatch = function (op, args) {
    var self = this;
    var deferred = defer();
    Q.nextTick(function () {
        self.promiseDispatch(deferred.resolve, op, args);
    });
    return deferred.promise;
};

/**
 * Gets the value of a property in a future turn.
 * @param object    promise or immediate reference for target object
 * @param name      name of property to get
 * @return promise for the property value
 */
Q.get = function (object, key) {
    return Q(object).dispatch("get", [key]);
};

Promise.prototype.get = function (key) {
    return this.dispatch("get", [key]);
};

/**
 * Sets the value of a property in a future turn.
 * @param object    promise or immediate reference for object object
 * @param name      name of property to set
 * @param value     new value of property
 * @return promise for the return value
 */
Q.set = function (object, key, value) {
    return Q(object).dispatch("set", [key, value]);
};

Promise.prototype.set = function (key, value) {
    return this.dispatch("set", [key, value]);
};

/**
 * Deletes a property in a future turn.
 * @param object    promise or immediate reference for target object
 * @param name      name of property to delete
 * @return promise for the return value
 */
Q.del = // XXX legacy
Q["delete"] = function (object, key) {
    return Q(object).dispatch("delete", [key]);
};

Promise.prototype.del = // XXX legacy
Promise.prototype["delete"] = function (key) {
    return this.dispatch("delete", [key]);
};

/**
 * Invokes a method in a future turn.
 * @param object    promise or immediate reference for target object
 * @param name      name of method to invoke
 * @param value     a value to post, typically an array of
 *                  invocation arguments for promises that
 *                  are ultimately backed with `resolve` values,
 *                  as opposed to those backed with URLs
 *                  wherein the posted value can be any
 *                  JSON serializable object.
 * @return promise for the return value
 */
// bound locally because it is used by other methods
Q.mapply = // XXX As proposed by "Redsandro"
Q.post = function (object, name, args) {
    return Q(object).dispatch("post", [name, args]);
};

Promise.prototype.mapply = // XXX As proposed by "Redsandro"
Promise.prototype.post = function (name, args) {
    return this.dispatch("post", [name, args]);
};

/**
 * Invokes a method in a future turn.
 * @param object    promise or immediate reference for target object
 * @param name      name of method to invoke
 * @param ...args   array of invocation arguments
 * @return promise for the return value
 */
Q.send = // XXX Mark Miller's proposed parlance
Q.mcall = // XXX As proposed by "Redsandro"
Q.invoke = function (object, name /*...args*/) {
    return Q(object).dispatch("post", [name, array_slice(arguments, 2)]);
};

Promise.prototype.send = // XXX Mark Miller's proposed parlance
Promise.prototype.mcall = // XXX As proposed by "Redsandro"
Promise.prototype.invoke = function (name /*...args*/) {
    return this.dispatch("post", [name, array_slice(arguments, 1)]);
};

/**
 * Applies the promised function in a future turn.
 * @param object    promise or immediate reference for target function
 * @param args      array of application arguments
 */
Q.fapply = function (object, args) {
    return Q(object).dispatch("apply", [void 0, args]);
};

Promise.prototype.fapply = function (args) {
    return this.dispatch("apply", [void 0, args]);
};

/**
 * Calls the promised function in a future turn.
 * @param object    promise or immediate reference for target function
 * @param ...args   array of application arguments
 */
Q["try"] =
Q.fcall = function (object /* ...args*/) {
    return Q(object).dispatch("apply", [void 0, array_slice(arguments, 1)]);
};

Promise.prototype.fcall = function (/*...args*/) {
    return this.dispatch("apply", [void 0, array_slice(arguments)]);
};

/**
 * Binds the promised function, transforming return values into a fulfilled
 * promise and thrown errors into a rejected one.
 * @param object    promise or immediate reference for target function
 * @param ...args   array of application arguments
 */
Q.fbind = function (object /*...args*/) {
    var promise = Q(object);
    var args = array_slice(arguments, 1);
    return function fbound() {
        return promise.dispatch("apply", [
            this,
            args.concat(array_slice(arguments))
        ]);
    };
};
Promise.prototype.fbind = function (/*...args*/) {
    var promise = this;
    var args = array_slice(arguments);
    return function fbound() {
        return promise.dispatch("apply", [
            this,
            args.concat(array_slice(arguments))
        ]);
    };
};

/**
 * Requests the names of the owned properties of a promised
 * object in a future turn.
 * @param object    promise or immediate reference for target object
 * @return promise for the keys of the eventually settled object
 */
Q.keys = function (object) {
    return Q(object).dispatch("keys", []);
};

Promise.prototype.keys = function () {
    return this.dispatch("keys", []);
};

/**
 * Turns an array of promises into a promise for an array.  If any of
 * the promises gets rejected, the whole array is rejected immediately.
 * @param {Array*} an array (or promise for an array) of values (or
 * promises for values)
 * @returns a promise for an array of the corresponding values
 */
// By Mark Miller
// http://wiki.ecmascript.org/doku.php?id=strawman:concurrency&rev=1308776521#allfulfilled
Q.all = all;
function all(promises) {
    return when(promises, function (promises) {
        var pendingCount = 0;
        var deferred = defer();
        array_reduce(promises, function (undefined, promise, index) {
            var snapshot;
            if (
                isPromise(promise) &&
                (snapshot = promise.inspect()).state === "fulfilled"
            ) {
                promises[index] = snapshot.value;
            } else {
                ++pendingCount;
                when(
                    promise,
                    function (value) {
                        promises[index] = value;
                        if (--pendingCount === 0) {
                            deferred.resolve(promises);
                        }
                    },
                    deferred.reject,
                    function (progress) {
                        deferred.notify({ index: index, value: progress });
                    }
                );
            }
        }, void 0);
        if (pendingCount === 0) {
            deferred.resolve(promises);
        }
        return deferred.promise;
    });
}

Promise.prototype.all = function () {
    return all(this);
};

/**
 * Returns the first resolved promise of an array. Prior rejected promises are
 * ignored.  Rejects only if all promises are rejected.
 * @param {Array*} an array containing values or promises for values
 * @returns a promise fulfilled with the value of the first resolved promise,
 * or a rejected promise if all promises are rejected.
 */
Q.any = any;

function any(promises) {
    if (promises.length === 0) {
        return Q.resolve();
    }

    var deferred = Q.defer();
    var pendingCount = 0;
    array_reduce(promises, function (prev, current, index) {
        var promise = promises[index];

        pendingCount++;

        when(promise, onFulfilled, onRejected, onProgress);
        function onFulfilled(result) {
            deferred.resolve(result);
        }
        function onRejected() {
            pendingCount--;
            if (pendingCount === 0) {
                deferred.reject(new Error(
                    "Can't get fulfillment value from any promise, all " +
                    "promises were rejected."
                ));
            }
        }
        function onProgress(progress) {
            deferred.notify({
                index: index,
                value: progress
            });
        }
    }, undefined);

    return deferred.promise;
}

Promise.prototype.any = function () {
    return any(this);
};

/**
 * Waits for all promises to be settled, either fulfilled or
 * rejected.  This is distinct from `all` since that would stop
 * waiting at the first rejection.  The promise returned by
 * `allResolved` will never be rejected.
 * @param promises a promise for an array (or an array) of promises
 * (or values)
 * @return a promise for an array of promises
 */
Q.allResolved = deprecate(allResolved, "allResolved", "allSettled");
function allResolved(promises) {
    return when(promises, function (promises) {
        promises = array_map(promises, Q);
        return when(all(array_map(promises, function (promise) {
            return when(promise, noop, noop);
        })), function () {
            return promises;
        });
    });
}

Promise.prototype.allResolved = function () {
    return allResolved(this);
};

/**
 * @see Promise#allSettled
 */
Q.allSettled = allSettled;
function allSettled(promises) {
    return Q(promises).allSettled();
}

/**
 * Turns an array of promises into a promise for an array of their states (as
 * returned by `inspect`) when they have all settled.
 * @param {Array[Any*]} values an array (or promise for an array) of values (or
 * promises for values)
 * @returns {Array[State]} an array of states for the respective values.
 */
Promise.prototype.allSettled = function () {
    return this.then(function (promises) {
        return all(array_map(promises, function (promise) {
            promise = Q(promise);
            function regardless() {
                return promise.inspect();
            }
            return promise.then(regardless, regardless);
        }));
    });
};

/**
 * Captures the failure of a promise, giving an oportunity to recover
 * with a callback.  If the given promise is fulfilled, the returned
 * promise is fulfilled.
 * @param {Any*} promise for something
 * @param {Function} callback to fulfill the returned promise if the
 * given promise is rejected
 * @returns a promise for the return value of the callback
 */
Q.fail = // XXX legacy
Q["catch"] = function (object, rejected) {
    return Q(object).then(void 0, rejected);
};

Promise.prototype.fail = // XXX legacy
Promise.prototype["catch"] = function (rejected) {
    return this.then(void 0, rejected);
};

/**
 * Attaches a listener that can respond to progress notifications from a
 * promise's originating deferred. This listener receives the exact arguments
 * passed to ``deferred.notify``.
 * @param {Any*} promise for something
 * @param {Function} callback to receive any progress notifications
 * @returns the given promise, unchanged
 */
Q.progress = progress;
function progress(object, progressed) {
    return Q(object).then(void 0, void 0, progressed);
}

Promise.prototype.progress = function (progressed) {
    return this.then(void 0, void 0, progressed);
};

/**
 * Provides an opportunity to observe the settling of a promise,
 * regardless of whether the promise is fulfilled or rejected.  Forwards
 * the resolution to the returned promise when the callback is done.
 * The callback can return a promise to defer completion.
 * @param {Any*} promise
 * @param {Function} callback to observe the resolution of the given
 * promise, takes no arguments.
 * @returns a promise for the resolution of the given promise when
 * ``fin`` is done.
 */
Q.fin = // XXX legacy
Q["finally"] = function (object, callback) {
    return Q(object)["finally"](callback);
};

Promise.prototype.fin = // XXX legacy
Promise.prototype["finally"] = function (callback) {
    callback = Q(callback);
    return this.then(function (value) {
        return callback.fcall().then(function () {
            return value;
        });
    }, function (reason) {
        // TODO attempt to recycle the rejection with "this".
        return callback.fcall().then(function () {
            throw reason;
        });
    });
};

/**
 * Terminates a chain of promises, forcing rejections to be
 * thrown as exceptions.
 * @param {Any*} promise at the end of a chain of promises
 * @returns nothing
 */
Q.done = function (object, fulfilled, rejected, progress) {
    return Q(object).done(fulfilled, rejected, progress);
};

Promise.prototype.done = function (fulfilled, rejected, progress) {
    var onUnhandledError = function (error) {
        // forward to a future turn so that ``when``
        // does not catch it and turn it into a rejection.
        Q.nextTick(function () {
            makeStackTraceLong(error, promise);
            if (Q.onerror) {
                Q.onerror(error);
            } else {
                throw error;
            }
        });
    };

    // Avoid unnecessary `nextTick`ing via an unnecessary `when`.
    var promise = fulfilled || rejected || progress ?
        this.then(fulfilled, rejected, progress) :
        this;

    if (typeof process === "object" && process && process.domain) {
        onUnhandledError = process.domain.bind(onUnhandledError);
    }

    promise.then(void 0, onUnhandledError);
};

/**
 * Causes a promise to be rejected if it does not get fulfilled before
 * some milliseconds time out.
 * @param {Any*} promise
 * @param {Number} milliseconds timeout
 * @param {Any*} custom error message or Error object (optional)
 * @returns a promise for the resolution of the given promise if it is
 * fulfilled before the timeout, otherwise rejected.
 */
Q.timeout = function (object, ms, error) {
    return Q(object).timeout(ms, error);
};

Promise.prototype.timeout = function (ms, error) {
    var deferred = defer();
    var timeoutId = setTimeout(function () {
        if (!error || "string" === typeof error) {
            error = new Error(error || "Timed out after " + ms + " ms");
            error.code = "ETIMEDOUT";
        }
        deferred.reject(error);
    }, ms);

    this.then(function (value) {
        clearTimeout(timeoutId);
        deferred.resolve(value);
    }, function (exception) {
        clearTimeout(timeoutId);
        deferred.reject(exception);
    }, deferred.notify);

    return deferred.promise;
};

/**
 * Returns a promise for the given value (or promised value), some
 * milliseconds after it resolved. Passes rejections immediately.
 * @param {Any*} promise
 * @param {Number} milliseconds
 * @returns a promise for the resolution of the given promise after milliseconds
 * time has elapsed since the resolution of the given promise.
 * If the given promise rejects, that is passed immediately.
 */
Q.delay = function (object, timeout) {
    if (timeout === void 0) {
        timeout = object;
        object = void 0;
    }
    return Q(object).delay(timeout);
};

Promise.prototype.delay = function (timeout) {
    return this.then(function (value) {
        var deferred = defer();
        setTimeout(function () {
            deferred.resolve(value);
        }, timeout);
        return deferred.promise;
    });
};

/**
 * Passes a continuation to a Node function, which is called with the given
 * arguments provided as an array, and returns a promise.
 *
 *      Q.nfapply(FS.readFile, [__filename])
 *      .then(function (content) {
 *      })
 *
 */
Q.nfapply = function (callback, args) {
    return Q(callback).nfapply(args);
};

Promise.prototype.nfapply = function (args) {
    var deferred = defer();
    var nodeArgs = array_slice(args);
    nodeArgs.push(deferred.makeNodeResolver());
    this.fapply(nodeArgs).fail(deferred.reject);
    return deferred.promise;
};

/**
 * Passes a continuation to a Node function, which is called with the given
 * arguments provided individually, and returns a promise.
 * @example
 * Q.nfcall(FS.readFile, __filename)
 * .then(function (content) {
 * })
 *
 */
Q.nfcall = function (callback /*...args*/) {
    var args = array_slice(arguments, 1);
    return Q(callback).nfapply(args);
};

Promise.prototype.nfcall = function (/*...args*/) {
    var nodeArgs = array_slice(arguments);
    var deferred = defer();
    nodeArgs.push(deferred.makeNodeResolver());
    this.fapply(nodeArgs).fail(deferred.reject);
    return deferred.promise;
};

/**
 * Wraps a NodeJS continuation passing function and returns an equivalent
 * version that returns a promise.
 * @example
 * Q.nfbind(FS.readFile, __filename)("utf-8")
 * .then(console.log)
 * .done()
 */
Q.nfbind =
Q.denodeify = function (callback /*...args*/) {
    var baseArgs = array_slice(arguments, 1);
    return function () {
        var nodeArgs = baseArgs.concat(array_slice(arguments));
        var deferred = defer();
        nodeArgs.push(deferred.makeNodeResolver());
        Q(callback).fapply(nodeArgs).fail(deferred.reject);
        return deferred.promise;
    };
};

Promise.prototype.nfbind =
Promise.prototype.denodeify = function (/*...args*/) {
    var args = array_slice(arguments);
    args.unshift(this);
    return Q.denodeify.apply(void 0, args);
};

Q.nbind = function (callback, thisp /*...args*/) {
    var baseArgs = array_slice(arguments, 2);
    return function () {
        var nodeArgs = baseArgs.concat(array_slice(arguments));
        var deferred = defer();
        nodeArgs.push(deferred.makeNodeResolver());
        function bound() {
            return callback.apply(thisp, arguments);
        }
        Q(bound).fapply(nodeArgs).fail(deferred.reject);
        return deferred.promise;
    };
};

Promise.prototype.nbind = function (/*thisp, ...args*/) {
    var args = array_slice(arguments, 0);
    args.unshift(this);
    return Q.nbind.apply(void 0, args);
};

/**
 * Calls a method of a Node-style object that accepts a Node-style
 * callback with a given array of arguments, plus a provided callback.
 * @param object an object that has the named method
 * @param {String} name name of the method of object
 * @param {Array} args arguments to pass to the method; the callback
 * will be provided by Q and appended to these arguments.
 * @returns a promise for the value or error
 */
Q.nmapply = // XXX As proposed by "Redsandro"
Q.npost = function (object, name, args) {
    return Q(object).npost(name, args);
};

Promise.prototype.nmapply = // XXX As proposed by "Redsandro"
Promise.prototype.npost = function (name, args) {
    var nodeArgs = array_slice(args || []);
    var deferred = defer();
    nodeArgs.push(deferred.makeNodeResolver());
    this.dispatch("post", [name, nodeArgs]).fail(deferred.reject);
    return deferred.promise;
};

/**
 * Calls a method of a Node-style object that accepts a Node-style
 * callback, forwarding the given variadic arguments, plus a provided
 * callback argument.
 * @param object an object that has the named method
 * @param {String} name name of the method of object
 * @param ...args arguments to pass to the method; the callback will
 * be provided by Q and appended to these arguments.
 * @returns a promise for the value or error
 */
Q.nsend = // XXX Based on Mark Miller's proposed "send"
Q.nmcall = // XXX Based on "Redsandro's" proposal
Q.ninvoke = function (object, name /*...args*/) {
    var nodeArgs = array_slice(arguments, 2);
    var deferred = defer();
    nodeArgs.push(deferred.makeNodeResolver());
    Q(object).dispatch("post", [name, nodeArgs]).fail(deferred.reject);
    return deferred.promise;
};

Promise.prototype.nsend = // XXX Based on Mark Miller's proposed "send"
Promise.prototype.nmcall = // XXX Based on "Redsandro's" proposal
Promise.prototype.ninvoke = function (name /*...args*/) {
    var nodeArgs = array_slice(arguments, 1);
    var deferred = defer();
    nodeArgs.push(deferred.makeNodeResolver());
    this.dispatch("post", [name, nodeArgs]).fail(deferred.reject);
    return deferred.promise;
};

/**
 * If a function would like to support both Node continuation-passing-style and
 * promise-returning-style, it can end its internal promise chain with
 * `nodeify(nodeback)`, forwarding the optional nodeback argument.  If the user
 * elects to use a nodeback, the result will be sent there.  If they do not
 * pass a nodeback, they will receive the result promise.
 * @param object a result (or a promise for a result)
 * @param {Function} nodeback a Node.js-style callback
 * @returns either the promise or nothing
 */
Q.nodeify = nodeify;
function nodeify(object, nodeback) {
    return Q(object).nodeify(nodeback);
}

Promise.prototype.nodeify = function (nodeback) {
    if (nodeback) {
        this.then(function (value) {
            Q.nextTick(function () {
                nodeback(null, value);
            });
        }, function (error) {
            Q.nextTick(function () {
                nodeback(error);
            });
        });
    } else {
        return this;
    }
};

Q.noConflict = function() {
    throw new Error("Q.noConflict only works when Q is used as a global");
};

// All code before this point will be filtered from stack traces.
var qEndingLine = captureLine();

return Q;

});
!function(e,t){var r=function(){return t(e)};"object"==typeof exports&&"object"==typeof module?module.exports=r():"function"==typeof define&&define.amd?define(r):breeze=r()}(this,function(e){"use strict";function t(e,t){for(var r in e)ue(e,r)&&t(r,e[r])}function r(e,t){var r=[];for(var n in e)if(ue(e,n)){var a=t?t(n,e[n]):e[n];void 0!==a&&r.push(a)}return r}function n(e,t){for(var r in e)if(ue(e,r)){var n=e[r];if(t(r,n))return{key:r,value:n}}return null}function a(e,t){var r=i(e,t);return null==r||!(!r.writable&&!r.set)}function i(e,t){if(!ce)return null;if(e.hasOwnProperty(t))return Object.getOwnPropertyDescriptor(e,t);var r=Object.getPrototypeOf(e);return null==r?null:i(r,t)}function o(e,t){return function(r){return r[e]===t}}function s(e){return function(t){return t[e]}}function u(e){var t=[];for(var r in e)ue(e,r)&&t.push(e[r]);return t}function p(e,t,r){if(!t)return e;if(r)r.forEach(function(r){e[r]=t[r]});else for(var n in t)ue(t,n)&&(e[n]=t[n]);return e}function c(e,t){for(var r in t)void 0===e[r]&&(e[r]=t[r]);return e}function l(e,t){return t.defaultInstance=c(new t(e),t.defaultInstance),e}function y(e,t,r){r=r||{};for(var n in t){var a=n.split(","),i=t[n];a.some(function(t){if(!(t in e))return!1;var n=e[t];return"function"!=typeof n&&(n==i||(!(!Array.isArray(n)||0!==n.length)||("function"==typeof i?n=i(n):"object"==typeof n&&n&&n.parentEnum&&(n=n.name),void 0===n||(r[a[0]]=n,!0))))})}return r}function f(e,t){if("entityAspect"!==e&&"complexAspect"!==e&&"entityType"!==e&&"complexType"!==e&&"constructor"!==e&&"_"!==e.charAt(0)&&"$"!==e.charAt(0))return t}function h(e,t){if(e!==Object(e))return e;if(!e._$visited){if(t=t||f,e.toJSON){var r=e.toJSON();if(r!==Object(r))return r;if(r!==e)return h(r,t);e=r}e._$visited=!0;var n;if(e instanceof Array)n=e.map(function(e){return h(e,t)});else if("function"==typeof e)n=void 0;else{n={};for(var a in e)if("_$visited"!==a){var i=e[a];t&&(i=t(a,i),void 0===i)||(i=h(i,t),void 0!==i&&(n[a]=i))}}return delete e._$visited,n}}function d(e,t){var r={},n=e.length;return t.forEach(function(t){for(var a=0;a<n;a++){var i=e[a];if(i){var o=i[t];if(void 0!==o){r[t]=o;break}}}}),r}function m(e){return null==e?[]:Array.isArray(e)?e:[e]}function v(e,t,r){if(r=null==r||r,null==e)return e;var n;return Array.isArray(e)?(n=[],e.forEach(function(e,a){var i=t(e,a);(null!=i||r)&&(n[a]=i)})):n=t(e),n}function g(e,t){for(var r=0,n=e.length;r<n;r++)if(t(e[r]))return e[r];return null}function w(e,t){for(var r=0,n=e.length;r<n;r++)if(t(e[r]))return r;return-1}function S(e,t){var r=e.indexOf(t);r===-1&&e.push(t)}function E(e,t,r){for(var n=j(t)?t:void 0,a=e.length-1,i=!1,o=a;o>=0;o--)if((n?n(e[o]):e[o]===t)&&(e.splice(o,1),i=!0,!r))return!0;return i}function T(e,t,r){for(var n=[],a=Math.min(e.length,t.length),i=0;i<a;++i)n.push(r(e[i],t[i]));return n}function P(e,t,r){if(!e||!t)return!1;if(e.length!==t.length)return!1;for(var n=0;n<e.length;n++)if(Array.isArray(e[n])){if(!P(e[n],t[n]))return!1}else if(r){if(!r(e[n],t[n]))return!1}else if(e[n]!==t[n])return!1;return!0}function b(e,t){var r=e[t];return r||(r=[],e[t]=r),r}function _(e,t){for(var r=e.split(";"),n=0,a=r.length;n<a;n++){var i=N(r[n]);if(i)return i}if(t)throw new Error("Unable to initialize "+e+".  "+t)}function N(t){var r=e.window;if(r){var n=r[t];if(n)return n;var a=r.require;if(a){if(a.defined)return a.defined(t)?a(t):void 0;try{return a(t)}catch(i){return}}}}function O(e,t,r,n){var a=e[t];if(r===a)return n();e[t]=r;try{return n()}finally{void 0===a?delete e[t]:e[t]=a}}function A(e,t,r){var n;try{return n=e(),r()}catch(a){throw"object"==typeof n&&(n.error=a),a}finally{t(n)}}function C(e){return function(){for(var t=pe(arguments),r="",n=t.length,a=null;n--;)a=t[n],r+=a===Object(a)?JSON.stringify(a):a,e.memoize||(e.memoize={});return r in e.memoize?e.memoize[r]:e.memoize[r]=e.apply(this,t)}}function x(){return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(e){var t=16*Math.random()|0,r="x"==e?t:3&t|8;return r.toString(16)})}function F(e){if("string"!=typeof e)throw new Error("Invalid ISO8601 duration '"+e+"'");var t=/^P((\d+Y)?(\d+M)?(\d+D)?)?(T(\d+H)?(\d+M)?(\d+S)?)?$/.exec(e);if(!t)throw new Error("Invalid ISO8601 duration '"+e+"'");for(var r=[2,3,4,6,7,8],n=[31104e3,2592e3,86400,3600,60,1],a=0,i=0;i<6;i++){var o=t[r[i]];o=o?+o.replace(/[A-Za-z]+/g,""):0,a+=o*n[i]}return a}function M(){}function k(e){return e}function D(e){return null===e?"null":void 0===e?"undefined":Object.prototype.toString.call(e).slice(8,-1).toLowerCase()}function I(e){return"date"===D(e)&&!isNaN(e.getTime())}function V(e){var t=/^((\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d\.\d+([+-][0-2]\d:[0-5]\d|Z))|(\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d([+-][0-2]\d:[0-5]\d|Z))|(\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d([+-][0-2]\d:[0-5]\d|Z)))$/;return"string"==typeof e&&t.test(e)}function j(e){return"function"===D(e)}function R(e){return"string"==typeof e}function K(e){return"object"==typeof e}function q(e){return"string"==typeof e&&/[a-fA-F\d]{8}-(?:[a-fA-F\d]{4}-){3}[a-fA-F\d]{12}/.test(e)}function z(e){return"string"==typeof e&&/^(-|)?P[T]?[\d\.,\-]+[YMDTHS]/.test(e)}function U(e){if(null===e||void 0===e)return!0;for(var t in e)if(ue(e,t))return!1;return!0}function B(e){return!isNaN(parseFloat(e))&&isFinite(e)}function $(e,t){return!!e&&(""==t||null==t||0===e.indexOf(t,0))}function L(e,t){return!!e&&(""==t||null==t||e.indexOf(t,e.length-t.length)!==-1)}function G(e){var t=arguments,r=RegExp("%([1-"+(arguments.length-1)+"])","g");return e.replace(r,function(e,r){return t[r]})}function J(e){return e=e.replace(le,"$1 "),e=e.charAt(0).toUpperCase()+e.slice(1)}function Q(e){var t=Function.call;return function(){return t.apply(e,arguments)}}function H(e,t,r){void 0===t&&(t=null);var n=r(),a=e.dataType;if(a&&a.parse&&(t=Array.isArray(t)&&!e.isScalar?t.map(function(e){return a.parse(e,typeof e)}):a.parse(t,typeof t)),!(t===n||a&&a.normalize&&t&&n&&a.normalize(t)===a.normalize(n))){var i,o=this.entityAspect;if(o)i=e.name;else{var s=this.complexAspect;if(!s)return void r(t);o=s.getEntityAspect(),i=s.getPropertyPath(e.name)}var u=o._inProcess=o._inProcess||[];if(!(u.indexOf(e)>=0)){u.push(e);try{var p={parent:this,property:e,newValue:t,oldValue:n,propertyName:i,entityAspect:o};e.isComplexProperty?W(p,r):e.isDataProperty?Z(p,r):Y(p,r),X(p)}finally{u.pop()}}}}function Z(e,t){var r=e.parent,n=e.property,a=e.entityAspect,i=e.oldValue,o=e.newValue,s=a.entityManager,u=r.entityType;if(!n.isScalar)throw new Error("Nonscalar data properties are readonly - items may be added or removed but the collection may not be changed.");if(a.entityState.isUnchangedOrModified()){var p=n.name,c=r.entityAspect||r.complexAspect;void 0===c.originalValues[p]&&(c.originalValues[p]=void 0!==i?i:n.defaultValue)}if(n.isPartOfKey&&s&&!s.isLoading){var l=u.keyProperties,y=l.map(function(e){return e===n?o:r.getProperty(e.name)}),f=new Ae(u,y);if(s.findEntityByKey(f))throw new Error("An entity with this key is already in the cache: "+f.toString());var h=r.entityAspect.getKey(),d=s._findEntityGroup(u);d._replaceKey(h,f)}var m=n.relatedNavigationProperty;if(m&&s)if(null!=o){var v=new Ae(m.entityType,[o]),g=s.findEntityByKey(v);g?r.setProperty(m.name,g):(s._unattachedChildrenMap.addChild(v,m,r),r.setProperty(m.name,null))}else r.setProperty(m.name,null);else if(n.inverseNavigationProperty&&s&&!s._inKeyFixup){var w=n.inverseNavigationProperty;if(null!=i&&(v=new Ae(w.parentType,[i]),g=s.findEntityByKey(v)))if(w.isScalar)g.setProperty(w.name,null);else{var S=g.getProperty(w.name);S.splice(S.indexOf(r),1)}null!=o&&(v=new Ae(w.parentType,[o]),g=s.findEntityByKey(v),g?w.isScalar?g.setProperty(w.name,r):g.getProperty(w.name).push(r):s._unattachedChildrenMap.addChild(v,w,r))}if(t(o),ee(e),n.isPartOfKey){var E=u.keyProperties.indexOf(n);u.navigationProperties.forEach(function(e){var t=e.getInverse(),n=t?t.foreignKeyNames:e.invForeignKeyNames;if(0!==n.length){var a=r.getProperty(e.name);if(a){var i=n[E];e.isScalar?a.setProperty(i,o):a.forEach(function(e){e.setProperty(i,o)})}}}),s&&u.inverseForeignKeyProperties.forEach(function(e){null==e.relatedNavigationProperty.inverse&&s._updateFkVal(e,i,o)}),a.getKey(!0)}}function W(e,t){var r=e.property,n=e.oldValue,a=e.newValue,i=r.dataType;if(!r.isScalar)throw new Error(G("You cannot set the non-scalar complex property: '%1' on the type: '%2'.Instead get the property and use array functions like 'push' or 'splice' to change its contents.",r.name,r.parentType.name));if(!a)throw new Error(G("You cannot set the '%1' property to null because it's datatype is the ComplexType: '%2'",r.name,r.dataType.name));if(!n){var o=i.getCtor();n=new o,t(n)}i.dataProperties.forEach(function(e){var t=e.name,r=a.getProperty(t);n.setProperty(t,r)})}function Y(e,t){var r=e.parent,n=e.property,a=e.entityAspect,i=e.oldValue,o=e.newValue;if(!n.isScalar)throw new Error("Nonscalar navigation properties are readonly - entities can be added or removed but the collection may not be changed.");var s=a.entityManager,u=n.getInverse();if(null!=o){var p=o.entityAspect;if(s){if(p.entityState.isDetached())s.isLoading||s.attachEntity(o,Ce.Added);else if(p.entityManager!==s)throw new Error("An Entity cannot be attached to an entity in another EntityManager. One of the two entities must be detached first.")}else p&&p.entityManager&&(s=p.entityManager,s.isLoading||s.attachEntity(a.entity,Ce.Added))}if(u)if(u.isScalar)null!=i&&i.setProperty(u.name,null),null!=o&&o.setProperty(u.name,r);else{if(null!=i){var c=i.getProperty(u.name),l=c.indexOf(r);l!==-1&&c.splice(l,1)}if(null!=o){var y=o.getProperty(u.name);y.push(r)}}else if(n.invForeignKeyNames&&s&&!s._inKeyFixup){var f=n.invForeignKeyNames;if(null!=o){var h=r.entityAspect.getKey().values;f.forEach(function(e,t){o.setProperty(e,h[t])})}else null!=i&&f.forEach(function(e){var t=i.entityType.getProperty(e);t.isPartOfKey||i.setProperty(e,null)})}if(t(o),ee(e),n.relatedDataProperties){var d=a.entityState;if(null==o&&(d.isDetached()||i.entityAspect.entityState.isDetached()))return;if(d.isDeleted())return;var m=n.entityType.keyProperties;m.forEach(function(e,t){var a=n.relatedDataProperties[t];if(o||!a.isPartOfKey){var i=o?o.getProperty(e.name):a.defaultValue;r.setProperty(a.name,i)}})}}function X(e){var t=e.entityAspect,r=t.entityManager,n=t.entity,a={entity:n,parent:e.parent,property:e.property,propertyName:e.propertyName,oldValue:e.oldValue,newValue:e.newValue};r?r.isLoading||r.isRejectingChanges||(t.propertyChanged.publish(a),r.entityChanged.publish({entityAction:_e.PropertyChange,entity:n,args:a})):t.propertyChanged.publish(a)}function ee(e){var t=e.entityAspect,r=t.entityManager;if(null!=r&&!r.isLoading){var n=e.property;t.entityState.isUnchanged()&&!n.isUnmapped&&t.setModified(),r.validationOptions.validateOnPropertyChange&&t._validateProperty(e.newValue,{entity:t.entity,property:n,propertyName:e.propertyName,oldValue:e.oldValue})}}function te(e){if(!e)return null;var t=e.split(":#");if(t.length>1)return re(t[0],t[1]);if($(e,De.ANONTYPE_PREFIX)){var r=re(e);return r.isAnonymous=!0,r}var n=e.split(",")[0],t=n.split(".");if(t.length>1){var a=t[t.length-1],i=t.slice(0,t.length-1),o=i.join(".");return re(a,o)}return re(e)}function re(e,t){return{shortTypeName:e,namespace:t,typeName:ae(e,t)}}function ne(e){return e.indexOf(":#")>=0}function ae(e,t){return t&&t.length>0?e+":#"+t:e}function ie(e,t,r){if(t)if(Array.isArray(t))t.forEach(e._addPropertyCore.bind(e));else{if("object"!=typeof t)throw new Error("The 'dataProperties' or 'navigationProperties' values must be either an array of data/nav properties or an object where each property defines a data/nav property");for(var n in t)if(ue(t,n)){var a=t[n];a.name=n;var i=new r(a);e._addPropertyCore(i)}}}function oe(e,t){var r=Array.isArray(t)?t:t.split(".");if(1===r.length)return e.getProperty(t);var n=e;return r.some(function(e){return n=n.getProperty(e),null==n}),n}var se={version:"1.6.0",metadataVersion:"1.0.5"},ue=Q(Object.prototype.hasOwnProperty),pe=Q(Array.prototype.slice),ce=function(){try{return!(!Object.getPrototypeOf||!Object.defineProperty({},"x",{}))}catch(e){return!1}}(),le=/([A-Z](?=[A-Z][a-z])|[^A-Z](?=[A-Z])|[a-zA-Z](?=[^a-zA-Z]))/g;Object.create||(Object.create=function(e){var t=function(){};return t.prototype=e,new t});var ye={};ye.__isES5Supported=ce,ye.objectForEach=t,ye.extend=p,ye.propEq=o,ye.pluck=s,ye.arrayEquals=P,ye.arrayFirst=g,ye.arrayIndexOf=w,ye.arrayRemoveItem=E,ye.arrayZip=T,ye.requireLib=_,ye.using=O,ye.memoize=C,ye.getUuid=x,ye.durationToSeconds=F,ye.isDate=I,ye.isGuid=q,ye.isDuration=z,ye.isFunction=j,ye.isEmpty=U,ye.isNumeric=B,ye.stringStartsWith=$,ye.stringEndsWith=L,ye.formatString=G,ye.titleCase=J,ye.getPropertyDescriptor=i,ye.toJSONSafe=h,ye.toJSONSafeReplacer=f,ye.parent=se,se.core=ye;var fe=function(){function e(e,t){return null!=t&&("string"==typeof t&&t.length>0)}function t(e,t){return null!=t&&typeof t===e.typeName}function r(e,t){return null!=t&&t instanceof e.type}function n(e,t){return null!=t&&void 0!==t[e.propertyName]}function a(e,t){return null!=t&&e.enumType.contains(t)}function i(e,t){return e.allowNull?void 0!==t:null!=t}function o(e,t){if(null==t)return!0;var r=e.prevContext;return!r||r.fn(r,t)}function s(e,t){var r=e.prevContext,n=r?" or it "+l(r,t):"";return"is optional"+n}function u(e,t){if(!Array.isArray(t))return!1;if(e.mustNotBeEmpty&&0===t.length)return!1;var r=e.prevContext;return!r||t.every(function(e){return r.fn(r,e)})}function c(e,t){var r=e.mustNotBeEmpty?"a nonEmpty array":"an array",n=e.prevContext,a=n?" where each element "+l(n,t):"";return" must be "+r+a}function l(e,t){var r=e.msg;return"function"==typeof r&&(r=r(e,t)),r}function y(e,t){if(e._context){for(var r=e._context;null!=r.prevContext;)r=r.prevContext;if(null===r.prevContext)return r.prevContext=t,e;if(null!=t.prevContext)throw new Error("Illegal construction - use 'or' to combine checks");t.prevContext=e._context}return f(e,t)}function f(e,t){return e._contexts[e._contexts.length-1]=t,e._context=t,e}function h(e){var t=e._contexts;if(null==t[t.length-1]&&t.pop(),0!==t.length)return t.some(function(t){return t.fn(t,e.v)})}function d(e,t){throw new Error(G("Error configuring an instance of '%1'. %2",e&&e._$typeName||"object",t))}var m=function(e,t){this.v=e,this.name=t,this._contexts=[null]},v=m.prototype;return v.isObject=function(){return this.isTypeOf("object")},v.isBoolean=function(){return this.isTypeOf("boolean")},v.isString=function(){return this.isTypeOf("string")},v.isNonEmptyString=function(){return y(this,{fn:e,msg:"must be a nonEmpty string"})},v.isNumber=function(){return this.isTypeOf("number")},v.isFunction=function(){return this.isTypeOf("function")},v.isTypeOf=function(e){return y(this,{fn:t,typeName:e,msg:"must be a '"+e+"'"})},v.isInstanceOf=function(e,t){return t=t||e.prototype._$typeName,y(this,{fn:r,type:e,typeName:t,msg:"must be an instance of '"+t+"'"})},v.hasProperty=function(e){return y(this,{fn:n,propertyName:e,msg:"must have a '"+e+"' property"})},v.isEnumOf=function(e){return y(this,{fn:a,enumType:e,msg:"must be an instance of the '"+e.name+"' enumeration"})},v.isRequired=function(e){return y(this,{fn:i,allowNull:e,msg:"is required"})},v.isOptional=function(){var e={fn:o,prevContext:null,msg:s};return y(this,e)},v.isNonEmptyArray=function(){return this.isArray(!0)},v.isArray=function(e){var t={fn:u,mustNotBeEmpty:e,prevContext:null,msg:c};return y(this,t)},v.or=function(){return this._contexts.push(null),this._context=null,this},v.check=function(e){var t=h(this);if(void 0!==t){if(!t)throw new Error(this.getMessage());return void 0!==this.v?this.v:e}},v._addContext=function(e){return y(this,e)},v.getMessage=function(){var e=this,t=this._contexts.map(function(t){return l(t,e.v)}).join(", or it ");return G(this.MESSAGE_PREFIX,this.name)+" "+t},v.withDefault=function(e){return this.defaultValue=e,this},v.whereParam=function(e){return this.parent.whereParam(e)},v.applyAll=function(e,t){var r=e._$typeName,n=r&&this.parent.config._$typeName===r,a=p({},this.parent.config);if(this.parent.params.forEach(function(r){n||delete a[r.name];try{r.check()}catch(i){d(e,i.message)}!t&&r._applyOne(e)}),!n)for(var i in a)void 0!==a[i]&&d(e,G("Unknown property: '%1'.",i))},v._applyOne=function(e){void 0!==this.v?e[this.name]=this.v:void 0!==this.defaultValue&&(e[this.name]=this.defaultValue)},v.MESSAGE_PREFIX="The '%1' parameter ",m}(),he=function(e,t){return new fe(e,t)},de=function(){var e=function(e){if("object"!=typeof e)throw new Error("Configuration parameter should be an object, instead it is a: "+typeof e);this.config=e,this.params=[]},t=e.prototype;return t.whereParam=function(e){var t=new fe(this.config[e],e);return t.parent=this,this.params.push(t),t},e}(),me=function(e){return new de(e)};ye.Param=fe,ye.assertParam=he,ye.assertConfig=me;var ve=function(){function e(){}var t=function(t,r){this.name=t;var n=new e(r);n.parentEnum=this,this._symbolPrototype=n,r&&Object.keys(r).forEach(function(e){n[e]=r[e]})},r=t.prototype;return t.isSymbol=function(t){return t instanceof e},r.fromName=function(e){return this[e]},r.addSymbol=function(e){var t=Object.create(this._symbolPrototype);return e&&Object.keys(e).forEach(function(r){t[r]=e[r]}),setTimeout(function(){t.getName()},0),t},r.resolveSymbols=function(){this.getSymbols().forEach(function(e){return e.getName()})},r.getSymbols=function(){return this.getNames().map(function(e){return this[e]},this)},r.getNames=function(){var e=[];for(var t in this)this.hasOwnProperty(t)&&("name"===t||"_"===t.substr(0,1)||j(this[t])||e.push(t));return e},r.contains=function(t){return t instanceof e&&this[t.getName()]===t},e.prototype.getName=function(){if(!this.name){var e=this;this.name=g(this.parentEnum.getNames(),function(t){return e.parentEnum[t]===e})}return this.name},e.prototype.toString=function(){return this.getName()},e.prototype.toJSON=function(){return{_$typeName:this.parentEnum.name,name:this.name}},t}();ye.Enum=ve;var ge=function(){function e(e,r,n){var a=e._subscribers;return!a||void a.forEach(function(a){try{a.callback(r)}catch(i){i.context="unable to publish on topic: "+e.name,n?n(i):e._defaultErrorCallback?e._defaultErrorCallback(i):t(i)}})}function t(e){}var r={},n=1,a=function(e,t,n){he(e,"eventName").isNonEmptyString().check(),he(t,"publisher").isObject().check(),this.name=e,r[e]=!0,this.publisher=t,n&&(this._defaultErrorCallback=n)},i=a.prototype;return i.publish=function(t,r,n){return!!a._isEnabled(this.name,this.publisher)&&(r===!0?setTimeout(e,0,this,t,n):e(this,t,n),!0)},i.publishAsync=function(e,t){this.publish(e,!0,t)},i.subscribe=function(e){this._subscribers||(this._subscribers=[]);var t=n;return this._subscribers.push({unsubKey:t,callback:e}),++n,t},i.unsubscribe=function(e){if(!this._subscribers)return!1;var t=this._subscribers,r=w(t,function(t){return t.unsubKey===e});return r!==-1&&(t.splice(r,1),0===t.length&&(this._subscribers=null),!0)},i.clear=function(){this._subscribers=null},a.bubbleEvent=function(e,t){e._getEventParent=t},a.enable=function(e,t,r){he(e,"eventName").isNonEmptyString().check(),he(t,"obj").isObject().check(),he(r,"isEnabled").isBoolean().isOptional().or().isFunction().check(),t._$eventMap||(t._$eventMap={}),t._$eventMap[e]=r},a.isEnabled=function(e,t){if(he(e,"eventName").isNonEmptyString().check(),he(t,"obj").isObject().check(),void 0===t._getEventParent)throw new Error("This object does not support event enabling/disabling");return a._isEnabled(e,t)},a._isEnabled=function(e,t){var r=null,n=t._$eventMap;if(n&&(r=n[e]),null!=r)return"function"==typeof r?r(t):!!r;var i=t._getEventParent&&t._getEventParent();return!i||a._isEnabled(e,i)},a}();ye.Event=ge;var we=function(){function e(e,t,r){var n=t.defaultInstance;return n||(n=new t.ctor,t.defaultInstance=n,n._$impl=t),n.initialize(),r&&(e.defaultInstance=n),a.interfaceInitialized.publish({interfaceName:e.name,instance:n,isDefault:!0}),n.checkForRecomposition&&a.interfaceInitialized.subscribe(function(e){n.checkForRecomposition(e)}),n}function t(e){var t=e.toLowerCase(),r=n(a.interfaceRegistry||{},function(e,r){return e.toLowerCase()===t});if(!r)throw new Error("Unknown interface name: "+e);return r.value}var a={};a.functionRegistry={},a.typeRegistry={},a.objectRegistry={},a.interfaceInitialized=new ge("interfaceInitialized",a);var i=function(e){this.name=e,this.defaultInstance=null,this._implMap={}};return i.prototype.registerCtor=function(e,t){this._implMap[e.toLowerCase()]={ctor:t,defaultInstance:null}},i.prototype.getImpl=function(e){return this._implMap[e.toLowerCase()]},i.prototype.getFirstImpl=function(){var e=n(this._implMap,function(){return!0});return e?e.value:null},a.interfaceRegistry={ajax:new i("ajax"),modelLibrary:new i("modelLibrary"),dataService:new i("dataService"),uriBuilder:new i("uriBuilder")},a.interfaceRegistry.modelLibrary.getDefaultInstance=function(){if(!this.defaultInstance)throw new Error("Unable to locate the default implementation of the '"+this.name+"' interface.  Possible options are 'ko', 'backingStore' or 'backbone'. See the breeze.config.initializeAdapterInstances method.");return this.defaultInstance},a.setProperties=function(e){me(e).whereParam("remoteAccessImplementation").isOptional().whereParam("trackingImplementation").isOptional().whereParam("ajaxImplementation").isOptional().applyAll(e),e.remoteAccessImplementation&&a.initializeAdapterInstance("dataService",e.remoteAccessImplementation),e.trackingImplementation&&a.initializeAdapterInstance("modelLibrary",e.trackingImplementation),e.ajaxImplementation&&a.initializeAdapterInstance("ajax",e.ajaxImplementation)},a.registerAdapter=function(e,r){he(e,"interfaceName").isNonEmptyString().check(),he(r,"adapterCtor").isFunction().check();var n=new r,a=n.name;if(!a)throw new Error("Unable to locate a 'name' property on the constructor passed into the 'registerAdapter' call.");var i=t(e);i.registerCtor(a,r)},a.getAdapter=function(e,r){var n=t(e);if(r){var a=n.getImpl(r);return a?a.ctor:null}return n.defaultInstance?n.defaultInstance._$impl.ctor:null},a.initializeAdapterInstances=function(e){return me(e).whereParam("dataService").isOptional().whereParam("modelLibrary").isOptional().whereParam("ajax").isOptional().whereParam("uriBuilder").isOptional().applyAll(this,!1),r(e,a.initializeAdapterInstance)},a.initializeAdapterInstance=function(r,n,a){a=void 0===a||a,he(r,"interfaceName").isNonEmptyString().check(),he(n,"adapterName").isNonEmptyString().check(),he(a,"isDefault").isBoolean().check();var i=t(r),o=i.getImpl(n);if(!o)throw new Error("Unregistered adapter.  Interface: "+r+" AdapterName: "+n);return e(i,o,a)},a.getAdapterInstance=function(r,n){var a,i=t(r),o=null==n||""==n;if(o){if(i.defaultInstance)return i.defaultInstance;a=i.getFirstImpl()}else a=i.getImpl(n);return a?a.defaultInstance?a.defaultInstance:e(i,a,o):null},a.registerFunction=function(e,t){he(e,"fn").isFunction().check(),he(t,"fnName").isString().check(),e.prototype._$fnName=t,a.functionRegistry[t]=e},a.getRegisteredFunction=function(e){return a.functionRegistry[e]},a._storeObject=function(e,t,r){var n=("string"==typeof t?t:t.prototype._$typeName)+"."+r;a.objectRegistry[n]=e},a._fetchObject=function(e,t){if(t){var r=("string"==typeof e?e:e.prototype._$typeName)+"."+t,n=a.objectRegistry[r];if(!n)throw new Error("Unable to locate a registered object by the name: "+r);return n}},a.registerType=function(e,t){he(e,"ctor").isFunction().check(),he(t,"typeName").isString().check(),e.prototype._$typeName=t,a.typeRegistry[t]=e},a.stringifyPad="",a}(),Se=we.interfaceRegistry.modelLibrary;ye.config=we,se.config=we;var Ee=function(){function e(e){var t=e.getEntityAspect();t.entityState.isUnchanged()&&t.setModified(),t.entityState.isModified()&&!e._origValues&&(e._origValues=e.slice(0))}function t(e,t){e._processAdds(t),n(e,"arrayChanged",{array:e,added:t})}function r(e,t){e._processRemoves(t),n(e,"arrayChanged",{array:e,removed:t})}function n(e,t,r){var n=e._getPendingPubs();n?e._pendingArgs?a(e._pendingArgs,r):(e._pendingArgs=r,n.push(function(){e[t].publish(e._pendingArgs),e._pendingArgs=null})):e[t].publish(r)}function a(e,t){for(var r in t)if("array"!==r&&e.hasOwnProperty(r)){var n=t[r],a=e[r];if(a){if(!Array.isArray(a))throw new Error("Cannot combine non array args");Array.prototype.push.apply(a,n)}else e[r]=n}}function i(e,t,r){e.parent=t,e.parentProperty=r}var o={};return o.push=function(){if(this._inProgress)return-1;var e=this._getGoodAdds(pe(arguments));if(!e.length)return this.length;this._beforeChange();var r=Array.prototype.push.apply(this,e);return t(this,e),r},o._push=function(){if(this._inProgress)return-1;var e=pe(arguments);this._beforeChange();var r=Array.prototype.push.apply(this,e);return t(this,e),r},o.unshift=function(){var e=this._getGoodAdds(pe(arguments));if(!e.length)return this.length;this._beforeChange();var r=Array.prototype.unshift.apply(this,e);return t(this,pe(e)),r},o.pop=function(){this._beforeChange();var e=Array.prototype.pop.apply(this);return r(this,[e]),e},o.shift=function(){this._beforeChange();var e=Array.prototype.shift.apply(this);return r(this,[e]),e},o.splice=function(){var e=this._getGoodAdds(pe(arguments,2)),n=pe(arguments,0,2).concat(e);this._beforeChange();var a=Array.prototype.splice.apply(this,n);return r(this,a),e.length&&t(this,e),a},o.getEntityAspect=function(){return this.parent.entityAspect||this.parent.complexAspect.getEntityAspect()},o._getEventParent=function(){return this.getEntityAspect()},o._getPendingPubs=function(){var e=this.getEntityAspect().entityManager;return e&&e._pendingPubs},o._beforeChange=function(){},{mixin:o,publish:n,updateEntityState:e,initializeParent:i}}(),Te=function(){function e(e,t,r,n,a){for(n=+e[t=e.length-1],a=0;t--;)r=+e[t],n+=++a%2?2*r%10+(r>4):r;return!(n%10)}function r(e,t,r,n){r&&(f.messageTemplates[e]=r);var a="string"==typeof t?new RegExp(t):t,i=function(e){return null==e||""===e||"string"==typeof e&&a.test(e)};return new f(e,i,n)}function n(e,t,r){return t?e.replace(/%([^%]+)%/g,function(e,n){var a;return a=r?t.hasOwnProperty(n)?t[n]:"":t[n],null!=a?j(a)?a(t):a:""}):e}function a(e,t,r,n){n=n||{},void 0!==t&&(n.min=t),void 0!==r&&(n.max=r);var a=n.messageTemplate||f.messageTemplates[e];return a||(f.messageTemplates[e]=G("'%displayName%' must be an integer between the values of %1 and %2",t,r)),function(){var a=function(e,n){return null==e||("string"==typeof e&&n&&n.allowString&&(e=parseInt(e,0)),"number"==typeof e&&!isNaN(e)&&Math.floor(e)===e&&(!(null!=t&&e<t)&&!(null!=r&&e>r)))};return new f(e,a,n)}}var i=-32768,o=32767,s=-2147483648,u=2147483647,c=0,l=255,y={displayName:function(e){return e.property?e.property.resolveProperty("displayName")||e.propertyName||e.property.name:"Value"}},f=function(e,t,r){this._baseContext=r||{},this._baseContext.name=e,r=p(Object.create(y),this._baseContext),r.messageTemplate=r.messageTemplate||f.messageTemplates[e],this.name=e,this.valFn=t,this.context=r},h=f.prototype;return h._$typeName="Validator",h.validate=function(e,t){var r;r=t?p(Object.create(this.context),t):this.context,this.currentContext=r;try{return this.valFn(e,r)?null:(r.value=e,new Pe(this,r,this.getMessage()))}catch(n){return new Pe(this,r,"Exception occured while executing this validator: "+this.name)}},h.getMessage=function(){try{var e=this.currentContext,t=e.message;return t?"function"==typeof t?t(e):t:e.messageTemplate?n(e.messageTemplate,e):"invalid value: "+(this.name||"{unnamed validator}")}catch(r){return"Unable to format error message"+r.toString()}},h.toJSON=function(){return this._baseContext},f.fromJSON=function(e){if(Array.isArray(e))return e.map(function(e){return f.fromJSON(e)});var t="Validator."+e.name,r=we.getRegisteredFunction(t);if(!r)throw new Error("Unable to locate a validator named:"+e.name);return r(e)},f.register=function(e){we.registerFunction(function(){return e},"Validator."+e.name)},f.registerFactory=function(e,t){we.registerFunction(e,"Validator."+t)},f.messageTemplates={bool:"'%displayName%' must be a 'true' or 'false' value",creditCard:"The %displayName% is not a valid credit card number",date:"'%displayName%' must be a date",duration:"'%displayName%' must be a ISO8601 duration string, such as 'P3H24M60S'",emailAddress:"The %displayName% '%value%' is not a valid email address",guid:"'%displayName%' must be a GUID",integer:"'%displayName%' must be an integer",integerRange:"'%displayName%' must be an integer between the values of %minValue% and %maxValue%",maxLength:"'%displayName%' must be a string with %maxLength% characters or less",number:"'%displayName%' must be a number",phone:"The %displayName% '%value%' is not a valid phone number",regularExpression:"The %displayName% '%value%' does not match '%expression%'",required:"'%displayName%' is required",string:"'%displayName%' must be a string",stringLength:"'%displayName%' must be a string with between %minLength% and %maxLength% characters",url:"The %displayName% '%value%' is not a valid url"},f.required=function(e){var t=function(e,t){return"string"==typeof e?!(!t||!t.allowEmptyStrings)||e.length>0:null!=e};return new f("required",t,e)},f.maxLength=function(e){var t=function(e,t){return null==e||"string"==typeof e&&e.length<=t.maxLength};return new f("maxLength",t,e)},f.stringLength=function(e){var t=function(e,t){return null==e||"string"==typeof e&&(!(null!=t.minLength&&e.length<t.minLength)&&!(null!=t.maxLength&&e.length>t.maxLength))};return new f("stringLength",t,e)},f.string=function(){var e=function(e){return null==e||"string"==typeof e};return new f("string",e)},f.guid=function(){var e=function(e){return null==e||q(e)};return new f("guid",e)},f.duration=function(){var e=function(e){return null==e||z(e)};return new f("duration",e)},f.number=f["double"]=f.single=function(e){var t=function(e,t){return null==e||("string"==typeof e&&t&&t.allowString&&(e=parseFloat(e,10)),"number"==typeof e&&!isNaN(e))};return new f("number",t,e)},f.integer=f.int64=function(e){var t=function(e,t){return null==e||("string"==typeof e&&t&&t.allowString&&(e=parseInt(e,10)),"number"==typeof e&&!isNaN(e)&&Math.floor(e)===e)};return new f("integer",t,e)},f.int32=function(e){return a("int32",s,u,e)()},f.int16=function(e){return a("int16",i,o,e)()},f["byte"]=function(e){return a("byte",c,l,e)()},f.bool=function(){var e=function(e){return null==e||(e===!0||e===!1)};return new f("bool",e)},f.none=function(){var e=function(e){return!0};return new f("none",e)},f.date=function(){var e=function(e){if(null==e)return!0;if("string"!=typeof e)return I(e);try{return!isNaN(Date.parse(e))}catch(t){return!1}};return new f("date",e)},f.creditCard=function(t){function r(t){return null==t||""===t||"string"==typeof t&&(t=t.replace(/(\-|\s)/g,""),!(!t||/\D/.test(t))&&e(t))}return new f("creditCard",r,t)},f.regularExpression=function(e){function t(e,t){if(null==e||""===e)return!0;if("string"!=typeof e)return!1;try{var r=new RegExp(t.expression)}catch(n){throw new Error("Missing or invalid expression parameter to regExp validator")}return r.test(e)}return new f("regularExpression",t,e)},f.emailAddress=function(e){var t=/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i;return r("emailAddress",t,null,e)},f.phone=function(e){
var t=/^((\+|(0(\d+)?[-\/.\s]?))[1-9]\d{0,2}[-\/.\s]?)?((\(\d{1,6}\)|\d{1,6})[-\/.\s]?)?(\d+[-\/.\s]?)+\d+$/;return r("phone",t,null,e)},f.url=function(e){var t=/^(https?|ftp):\/\/(((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-fA-F]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|([a-zA-Z][\-a-zA-Z0-9]*)|((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-fA-F]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-fA-F]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-fA-F]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-fA-F]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/;return r("url",t,null,e)},f.makeRegExpValidator=r,t(f,function(e,t){"function"==typeof t&&"fromJSON"!==e&&"register"!==e&&"registerFactory"!==e&&"makeRegExpValidator"!==e&&we.registerFunction(t,"Validator."+e)}),f}(),Pe=function(){var e=function t(e,r,n,a){he(e,"validator").isOptional().isInstanceOf(Te).check(),he(n,"errorMessage").isNonEmptyString().check(),he(a,"key").isOptional().isNonEmptyString().check(),this.validator=e,r=r||{},this.context=r,this.errorMessage=n,this.property=r.property,this.propertyName=r.propertyName||r.property&&r.property.name,a?this.key=a:this.key=t.getKey(e||n,this.propertyName),this.isServerError=!1};return e.getKey=function(e,t){return(e.name||e)+(t?":"+t:"")},e}();se.Validator=Te,se.ValidationError=Pe;var be=function(){function e(e,t){return t&&me(t).whereParam("validateOnAttach").isBoolean().isOptional().whereParam("validateOnSave").isBoolean().isOptional().whereParam("validateOnQuery").isBoolean().isOptional().whereParam("validateOnPropertyChange").isBoolean().isOptional().applyAll(e),e}var t=function(t){e(this,t)},r=t.prototype;return r._$typeName="ValidationOptions",r.using=function(t){if(!t)return this;var r=new be(this);return e(r,t),r},r.setAsDefault=function(){return l(this,t)},t.defaultInstance=new t({validateOnAttach:!0,validateOnSave:!0,validateOnQuery:!1,validateOnPropertyChange:!0}),t}();se.ValidationOptions=be,se.makeComplexArray=function(){function e(e,t){return t.filter(function(t){return t.parent!==e.parent})}function t(e,t){t.forEach(function(t){if(null!=t.parent)throw new Error("The complexObject is already attached. Either clone it or remove it from its current owner");a(t,e)})}function r(e,t){t.forEach(function(t){n(t,e)})}function n(e,t){var r=e.complexAspect;return r.parent!==t.parent?null:(r.parent=null,r.parentProperty=null,r)}function a(e,t){var r=e.complexAspect;return r.parent===t.parent?null:(r.parent=t.parent,r.parentProperty=t.parentProperty,r)}function i(e,t,r){return Ee.initializeParent(e,t,r),e.arrayChanged=new ge("arrayChanged",e),p(e,Ee.mixin),p(e,o)}var o={};return o._getGoodAdds=function(t){return e(this,t)},o._beforeChange=function(){Ee.updateEntityState(this)},o._processAdds=function(e){t(this,e)},o._processRemoves=function(e){r(this,e)},o._rejectChanges=function(){if(this._origValues){var e=this;this.forEach(function(t){n(t,e)}),this.length=0,this._origValues.forEach(function(t){e.push(t)})}},o._acceptChanges=function(){this._origValues=null},i}();var _e=function(){var e={isAttach:function(){return!!this.isAttach},isDetach:function(){return!!this.isDetach},isModification:function(){return!!this.isModification}},t=new ve("EntityAction",e);return t.Attach=t.addSymbol({isAttach:!0}),t.AttachOnQuery=t.addSymbol({isAttach:!0}),t.AttachOnImport=t.addSymbol({isAttach:!0}),t.Detach=t.addSymbol({isDetach:!0}),t.MergeOnQuery=t.addSymbol({isModification:!0}),t.MergeOnImport=t.addSymbol({isModification:!0}),t.MergeOnSave=t.addSymbol({isModification:!0}),t.PropertyChange=t.addSymbol({isModification:!0}),t.EntityStateChange=t.addSymbol(),t.AcceptChanges=t.addSymbol(),t.RejectChanges=t.addSymbol({isModification:!0}),t.Clear=t.addSymbol({isDetach:!0}),t.resolveSymbols(),t}();se.EntityAction=_e;var Ne=function(){function e(t){var r=t.entityAspect||t.complexAspect,n=t.entityType||t.complexType,a=r.originalValues;for(var i in a)t.setProperty(i,a[i]);n.complexProperties.forEach(function(r){var n=t.getProperty(r.name);r.isScalar?e(n):(n._rejectChanges(),n.forEach(e))})}function r(e){var t=e.entityAspect||e.complexAspect;t.originalValues={};var n=e.entityType||e.complexType;n.complexProperties.forEach(function(t){var n=e.getProperty(t.name);t.isScalar?r(n):(n._acceptChanges(),n.forEach(r))})}function n(e,t){var r=!0,a=e.entityType||e.complexType,i=e.entityAspect||e.complexAspect,s=e.entityAspect||e.complexAspect.getEntityAspect(),u={entity:s.entity};return void 0!==t&&(u.index=t),a.getProperties().forEach(function(t){var a=e.getProperty(t.name),o=t.getAllValidators();o.length>0&&(u.property=t,u.propertyName=i.getPropertyPath(t.name),r=s._validateProperty(a,u)&&r),t.isComplexProperty&&(r=t.isScalar?n(a)&&r:a.reduce(function(e,t,r){return n(t,r)&&e},r))}),a.getAllValidators().forEach(function(t){r=o(s,t,e)&&r}),r}function a(e,t){var r=t.isDeleted();r?i(e):O(e.entityAspect.entityManager,"isLoading",!0,function(){i(e)})}function i(e){e.entityType.navigationProperties.forEach(function(t){var r=t.getInverse(),n=e.getProperty(t.name);if(t.isScalar){if(n){if(r)if(r.isScalar)n.setProperty(r.name,null);else{var a=n.getProperty(r.name);a.length&&E(a,e)}e.setProperty(t.name,null)}}else r&&n.slice(0).forEach(function(e){r.isScalar&&e.setProperty(r.name,null)}),n.length=0})}function o(e,t,r,n){var a=t.validate(r,n);if(a)return e._addValidationError(a),!1;var i=Pe.getKey(t,n?n.propertyName:null);return e._removeValidationError(i),!0}var s=function c(e){if(null===e){var t=c._nullInstance;if(t)return t;c._nullInstance=this}else{if(void 0===e)throw new Error("The EntityAspect ctor requires an entity as its only argument.");if(e.entityAspect)return e.entityAspect}if(!(this instanceof c))return new c(e);if(this.entity=e,this.entityGroup=null,this.entityManager=null,this.entityState=Ce.Detached,this.isBeingSaved=!1,this.originalValues={},this.hasValidationErrors=!1,this._validationErrors={},this.validationErrorsChanged=new ge("validationErrorsChanged",this),this.propertyChanged=new ge("propertyChanged",this),null!=e){e.entityAspect=this;var r=e.entityType||e._$entityType;if(!r){var n=e.prototype._$typeName;throw n?new Error("Metadata for this entityType has not yet been resolved: "+n):new Error("This entity is not registered as a valid EntityType")}var a=r.getEntityCtor();Se.getDefaultInstance().startTracking(e,a.prototype)}},p=s.prototype;return ge.bubbleEvent(p,function(){return this.entityManager}),p.getKey=function(e){if(e=he(e,"forceRefresh").isBoolean().isOptional().check(!1),e||!this._entityKey){var t=this.entity.entityType,r=t.keyProperties,n=r.map(function(e){return this.entity.getProperty(e.name)},this);this._entityKey=new Ae(t,n)}return this._entityKey},p.acceptChanges=function(){this._checkOperation("acceptChanges");var e=this.entityManager;this.entityState.isDeleted()?e.detachEntity(this.entity):this.setUnchanged(),e.entityChanged.publish({entityAction:_e.AcceptChanges,entity:this.entity})},p.rejectChanges=function(){this._checkOperation("rejectChanges");var t=this.entity,r=this.entityManager;O(r,"isRejectingChanges",!0,function(){e(t)}),this.entityState.isAdded()?(r.detachEntity(t),r._notifyStateChange(t,!1)):(this.entityState.isDeleted()&&this.entityManager._linkRelatedEntities(t),this.setUnchanged(),this.propertyChanged.publish({entity:t,propertyName:null}),this.entityManager.entityChanged.publish({entityAction:_e.RejectChanges,entity:t}))},p.getPropertyPath=function(e){return e},p.setAdded=function(){return this.setEntityState(Ce.Added)},p.setUnchanged=function(){return this.setEntityState(Ce.Unchanged)},p.setModified=function(){return this.setEntityState(Ce.Modified)},p.setDeleted=function(){return this.setEntityState(Ce.Deleted)},p.setDetached=function(){return this.setEntityState(Ce.Detached)},p.setEntityState=function(e){if(this.entityState===e)return!1;if(this._checkOperation("setEntityState"),this.entityState.isDetached())throw new Error("You cannot set the 'entityState' of an entity when it is detached - except by first attaching it to an EntityManager");var t=this.entity,n=this.entityManager,i=!0;if(e===Ce.Unchanged)r(t),delete this.hasTempKey,i=!1;else if(e===Ce.Added)r(t);else if(e===Ce.Deleted){if(this.entityState.isAdded())return this.setEntityState(Ce.Detached),!0;this.entityState=Ce.Deleted,a(t,Ce.Deleted)}else if(e===Ce.Modified);else if(e===Ce.Detached){var o=this.entityGroup;if(!o)return!1;o.detachEntity(t),this.entityState=e,a(t,Ce.Detached),this._detach(),n.entityChanged.publish({entityAction:_e.Detach,entity:t}),i=!1}return this.entityState=e,n._notifyStateChange(t,i),!0},p.loadNavigationProperty=function(e,t,r){var n=this.entity,a=n.entityType._checkNavProperty(e),i=Le.fromEntityNavigation(n,a),o=n.entityAspect.entityManager.executeQuery(i),s=this;return o.then(function(e){return s._markAsLoaded(a.name),t&&t(e),ke.resolve(e)},function(e){return r&&r(e),ke.reject(e)})},p.markNavigationPropertyAsLoaded=function(e){var t=this.entity.entityType._checkNavProperty(e);this._markAsLoaded(t.name)},p.isNavigationPropertyLoaded=function(e){var t=this.entity.entityType._checkNavProperty(e);return!(!t.isScalar||null==this.entity.getProperty(t.name))||this._loadedNps&&this._loadedNps.indexOf(t.name)>=0},p._markAsLoaded=function(e){this._loadedNps=this._loadedNps||[],S(this._loadedNps,e)},p.validateEntity=function(){var e=!0;return this._processValidationOpAndPublish(function(t){e=n(t.entity)}),e},p.validateProperty=function(e,t){var r=this.getPropertyValue(e);return r&&r.complexAspect?n(r):(t=t||{},t.entity=this.entity,"string"==typeof e?(t.property=this.entity.entityType.getProperty(e,!0),t.propertyName=e):(t.property=e,t.propertyName=e.name),this._validateProperty(r,t))},p.getValidationErrors=function(e){he(e,"property").isOptional().isEntityProperty().or().isString().check();var t=u(this._validationErrors);if(e){var r="string"==typeof e?e:e.name;t=t.filter(function(e){return e.property&&(e.property.name===r||r.indexOf(".")!=-1&&e.propertyName==r)})}return t},p.addValidationError=function(e){he(e,"validationError").isInstanceOf(Pe).check(),this._processValidationOpAndPublish(function(t){t._addValidationError(e)})},p.removeValidationError=function(e){he(e,"validationErrorOrKey").isString().or().isInstanceOf(Pe).or().isInstanceOf(Te).check();var t="string"==typeof e?e:e.key;this._processValidationOpAndPublish(function(e){e._removeValidationError(t)})},p.clearValidationErrors=function(){this._processValidationOpAndPublish(function(e){t(e._validationErrors,function(t,r){r&&(delete e._validationErrors[t],e._pendingValidationResult.removed.push(r))}),e.hasValidationErrors=!U(e._validationErrors)})},p.getParentKey=function(e){var t=e.foreignKeyNames;if(0===t.length)return null;var r=this,n=t.map(function(e){return r.entity.getProperty(e)});return new Ae(e.entityType,n)},p.getPropertyValue=function(e){he(e,"property").isString().or().isEntityProperty().check();var t;if("string"==typeof e){var r=e.trim().split("."),n=r.shift();for(t=this.entity,t=t.getProperty(n);r.length>0;)n=r.shift(),t=t.getProperty(n)}else{if(!(e.parentType instanceof Ve))throw new Error("The validateProperty method does not accept a 'property' parameter whose parentType is a ComplexType; Pass a 'property path' string as the 'property' parameter instead ");t=this.entity.getProperty(e.name)}return t},p._checkOperation=function(e){if(this.isBeingSaved)throw new Error("Cannot perform a '"+e+"' on an entity that is in the process of being saved");return this},p._detach=function(){this.entityGroup=null,this.entityManager=null,this.entityState=Ce.Detached,this.originalValues={},this._validationErrors={},this.hasValidationErrors=!1,this.validationErrorsChanged.clear(),this.propertyChanged.clear()},p._validateProperty=function(e,t){var r=!0;return this._processValidationOpAndPublish(function(n){t.property.getAllValidators().forEach(function(a){r=o(n,a,e,t)&&r})}),r},p._processValidationOpAndPublish=function(e){if(this._pendingValidationResult)e(this);else try{this._pendingValidationResult={entity:this.entity,added:[],removed:[]},e(this),(this._pendingValidationResult.added.length>0||this._pendingValidationResult.removed.length>0)&&(this.validationErrorsChanged.publish(this._pendingValidationResult),this.entityManager&&this.entityManager.validationErrorsChanged.publish(this._pendingValidationResult))}finally{this._pendingValidationResult=void 0}},p._addValidationError=function(e){this._validationErrors[e.key]=e,this.hasValidationErrors=!0,this._pendingValidationResult.added.push(e)},p._removeValidationError=function(e){var t=this._validationErrors[e];t&&(delete this._validationErrors[e],this.hasValidationErrors=!U(this._validationErrors),this._pendingValidationResult.removed.push(t))},s}(),Oe=function(){var e=function r(e,t,n){if(!e)throw new Error("The  ComplexAspect ctor requires an entity as its only argument.");if(e.complexAspect)return e.complexAspect;if(!(this instanceof r))return new r(e,t,n);this.complexObject=e,e.complexAspect=this,this.originalValues={},null!=t&&(this.parent=t,this.parentProperty=n);var a=e.complexType;if(!a){var i=e.prototype._$typeName;throw i?new Error("Metadata for this complexType has not yet been resolved: "+i):new Error("This entity is not registered as a valid ComplexType")}var o=a.getCtor();Se.getDefaultInstance().startTracking(e,o.prototype)},t=e.prototype;return t.getEntityAspect=function(){var e=this.parent;if(!e)return new Ne(null);for(var t=e.entityAspect;e&&!t;)e=e.complexAspect&&e.complexAspect.parent,t=e&&e.entityAspect;return t||new Ne(null)},t.getPropertyPath=function(e){var t=this.parent;if(!t)return null;var r=t.complexAspect||t.entityAspect;return r.getPropertyPath(this.parentProperty.name+"."+e)},e}();se.EntityAspect=Ne,se.ComplexAspect=Oe;var Ae=function(){function e(e){return e.join(t)}var t=":::",r=function(t,r){he(t,"entityType").isInstanceOf(Ve).check();var n=t.getSelfAndSubtypes();n.length>1&&(this._subtypes=n.filter(function(e){return e.isAbstract===!1})),Array.isArray(r)||(r=pe(arguments,1)),this.entityType=t,t.keyProperties.forEach(function(e,t){e.dataType===xe.Guid&&(r[t]=r[t]&&r[t].toLowerCase())}),this.values=r,this._keyInGroup=e(r)};r._$typeName="EntityKey";var n=r.prototype;return n.toJSON=function(){return{entityType:this.entityType.name,values:this.values}},r.fromJSON=function(e,t){var r=t._getEntityType(e.entityType,!0);return new Ae(r,e.values)},n.equals=function(e){return e instanceof Ae&&(this.entityType===e.entityType&&P(this.values,e.values))},n.toString=function(e){return(e||this.entityType).name+"-"+this._keyInGroup},r.equals=function(e,t){return e instanceof Ae&&e.equals(t)},n._isEmpty=function(){return 0===this.values.join("").length},r.createKeyString=e,r}();se.EntityKey=Ae;var Ce=function(){var e={isUnchanged:function(){return this===t.Unchanged},isAdded:function(){return this===t.Added},isModified:function(){return this===t.Modified},isDeleted:function(){return this===t.Deleted},isDetached:function(){return this===t.Detached},isUnchangedOrModified:function(){return this===t.Unchanged||this===t.Modified},isAddedModifiedOrDeleted:function(){return this===t.Added||this===t.Modified||this===t.Deleted}},t=new ve("EntityState",e);return t.Unchanged=t.addSymbol(),t.Added=t.addSymbol(),t.Modified=t.addSymbol(),t.Deleted=t.addSymbol(),t.Detached=t.addSymbol(),t.resolveSymbols(),t}();se.EntityState=Ce,se.makePrimitiveArray=function(){function e(e,r,n){return Ee.initializeParent(e,r,n),e.arrayChanged=new ge("arrayChanged",e),p(e,Ee.mixin),p(e,t)}var t={};return t._getGoodAdds=function(e){return e},t._beforeChange=function(){var e=this.getEntityAspect();e.entityState.isUnchanged()&&e.setModified(),e.entityState.isModified()&&!this._origValues&&(this._origValues=this.slice(0))},t._processAdds=function(e){},t._processRemoves=function(e){},t._rejectChanges=function(){this._origValues&&(this.length=0,Array.prototype.push.apply(this,this._origValues))},t._acceptChanges=function(){this._origValues=null},e}(),se.makeRelationArray=function(){function e(e,t){var r=n(e,t);if(!r.length)return r;var a=e.parentEntity,i=a.entityAspect.entityManager;return i&&!i.isLoading&&r.forEach(function(t){if(t.entityAspect.entityState.isDetached()){e._inProgress=!0;try{i.attachEntity(t,Ce.Added)}finally{e._inProgress=!1}}}),r}function t(e,t){var r=e.parentEntity,n=e.navigationProperty,a=e._addsInProcess,i=n.getInverse(),o=a.length;try{t.forEach(function(e){if(a.push(e),i)e.setProperty(i.name,r);else{var t=r.entityType.keyProperties;n.invForeignKeyNames.forEach(function(n,a){e.setProperty(n,r.getProperty(t[a].name))})}})}finally{a.splice(o,t.length)}}function r(e,t){var r=e.navigationProperty.getInverse();r&&t.forEach(function(e){e.setProperty(r.name,null)})}function n(e,t){var r,n=e.parentEntity,a=e.navigationProperty,i=a.getInverse();if(i)r=t.filter(function(t){if(e._addsInProcess.indexOf(t)>=0)return!1;var r=t.getProperty(i.name);return r!==n});else{var o=a.invForeignKeyNames;a.baseProperty&&!o.length&&(o=a.baseProperty.invForeignKeyNames);var s=n.entityType.keyProperties;r=t.filter(function(t){return!(e._addsInProcess.indexOf(t)>=0)&&o.some(function(e,r){var a=s[r].name,i=n.getProperty(a),o=t.getProperty(e);return i!==o})})}return r}function a(e,t,r){return e.parentEntity=t,e.navigationProperty=r,e.arrayChanged=new ge("arrayChanged",e),e._addsInProcess=[],p(e,Ee.mixin),p(e,i)}var i={};return i.load=function(e,t){var r=this.parentEntity,n=Le.fromEntityNavigation(this.parentEntity,this.navigationProperty),a=r.entityAspect.entityManager;return a.executeQuery(n,e,t)},i._getEventParent=function(){return this.parentEntity.entityAspect},i._getPendingPubs=function(){var e=this.parentEntity.entityAspect.entityManager;return e&&e._pendingPubs},i._getGoodAdds=function(t){return e(this,t)},i._processAdds=function(e){t(this,e)},i._processRemoves=function(e){r(this,e)},a}();var xe=function(){function e(e,t){throw e=G(e,t),new Error(e)}function t(e){switch(e){case A.String:return Te.string;case A.Int64:return Te.int64;case A.Int32:return Te.int32;case A.Int16:return Te.int16;case A.Decimal:return Te.number;case A.Double:return Te.number;case A.Single:return Te.number;case A.DateTime:return Te.date;case A.DateTimeOffset:return Te.date;case A.Boolean:return Te.bool;case A.Guid:return Te.guid;case A.Byte:return Te["byte"];case A.Binary:return Te.none;case A.Time:return Te.duration;case A.Undefined:return Te.none}}var r,n={},a=function(){r={stringPrefix:"K_",nextNumber:-1,nextNumberIncrement:-1}};a();var i=function(){return r.stringPrefix+o().toString()},o=function(){var e=r.nextNumber;return r.nextNumber+=r.nextNumberIncrement,e},s=function(){return x()},u=function(){return new Date},p=function(e){for(var t=new Date,r=new Date;t.getTime()===r.getTime();)r=new Date;return r},c=function(e,t){return null==e?e:e.toString()},l=function(e,t){return"string"===t?e.trim().toLowerCase():e},y=function(e,t){if("string"===t){var r=e.trim();if(""===r)return null;var n=parseInt(r,10);return isNaN(n)?e:n}return"number"===t?Math.round(e):e},f=function(e,t){if("string"===t){var r=e.trim();if(""===r)return null;var n=parseFloat(r);return isNaN(n)?e:n}return e},h=function(e,t){var r;if("string"===t){var n=e.trim();return""===n?null:(r=new Date(Date.parse(n)),I(r)?r:e)}return"number"===t?(r=new Date(e),I(r)?r:e):e},d=function(e,t){if("string"===t){var r=e.trim().toLowerCase();return"false"!==r&&""!==r&&("true"===r||e)}return e},m=function(e){return null==e?null:"'"+e.replace(/'/g,"''")+"'"},v=function(e){return null==e?null:"string"==typeof e?parseInt(e,10):e},g=function(e){return function(t){return null==t?null:("string"==typeof t&&(t=parseFloat(t)),t+e)}},w=function(t){if(null==t)return null;try{return"datetime'"+t.toISOString()+"'"}catch(r){e("'%1' is not a valid dateTime",t)}},S=function(t){if(null==t)return null;try{return"datetimeoffset'"+t.toISOString()+"'"}catch(r){e("'%1' is not a valid dateTime",t)}},E=function(t){return null==t?null:(z(t)||e("'%1' is not a valid ISO 8601 duration",t),"time'"+t+"'")},T=function(t){return null==t?null:(q(t)||e("'%1' is not a valid guid",t),"guid'"+t+"'")},P=function(e){return null==e?null:"string"==typeof e?"true"===e.trim().toLowerCase():!!e},b=function(e){return null==e?e:"binary'"+e+"'"},_=function(e){return e},N=function(e){return I(e)||(e=A.parseDateFromServer(e)),e},O=function(e){return e&&void 0!==e.$value&&(e=e.$value),e},A=new ve("DataType",n);A.String=A.addSymbol({defaultValue:"",parse:c,fmtOData:m,getNext:i}),A.Int64=A.addSymbol({defaultValue:0,isNumeric:!0,isInteger:!0,quoteJsonOData:!0,parse:y,fmtOData:g("L"),getNext:o}),A.Int32=A.addSymbol({defaultValue:0,isNumeric:!0,isInteger:!0,parse:y,fmtOData:v,getNext:o}),A.Int16=A.addSymbol({defaultValue:0,isNumeric:!0,isInteger:!0,parse:y,fmtOData:v,getNext:o}),A.Byte=A.addSymbol({defaultValue:0,isNumeric:!0,isInteger:!0,parse:y,fmtOData:v}),A.Decimal=A.addSymbol({defaultValue:0,isNumeric:!0,quoteJsonOData:!0,isFloat:!0,parse:f,fmtOData:g("m"),getNext:o}),A.Double=A.addSymbol({defaultValue:0,isNumeric:!0,isFloat:!0,parse:f,fmtOData:g("d"),getNext:o}),A.Single=A.addSymbol({defaultValue:0,isNumeric:!0,isFloat:!0,parse:f,fmtOData:g("f"),getNext:o}),A.DateTime=A.addSymbol({defaultValue:new Date(1900,0,1),isDate:!0,parse:h,parseRawValue:N,normalize:function(e){return e&&e.getTime&&e.getTime()},fmtOData:w,getNext:u,getConcurrencyValue:p}),A.DateTimeOffset=A.addSymbol({defaultValue:new Date(1900,0,1),isDate:!0,parse:h,parseRawValue:N,normalize:function(e){return e&&e.getTime&&e.getTime()},fmtOData:S,getNext:u,getConcurrencyValue:p}),A.Time=A.addSymbol({defaultValue:"PT0S",fmtOData:E,parseRawValue:A.parseTimeFromServer}),A.Boolean=A.addSymbol({defaultValue:!1,parse:d,fmtOData:P}),A.Guid=A.addSymbol({defaultValue:"00000000-0000-0000-0000-000000000000",parse:l,fmtOData:T,getNext:s,parseRawValue:function(e){return e.toLowerCase()},getConcurrencyValue:x}),A.Binary=A.addSymbol({defaultValue:null,fmtOData:b,parseRawValue:O}),A.Undefined=A.addSymbol({defaultValue:void 0,fmtOData:_}),A.resolveSymbols(),A.getComparableFn=function(e){return e&&e.normalize?e.normalize:e===A.Time?function(e){return e&&F(e)}:function(e){return e}},A.fromEdmDataType=function(e){var t=null,r=e.split(".");if(r.length>1){var n=r[1];t="image"===n?A.Byte:2===r.length?A.fromName(n)||A.Undefined:A.String}return t},A.fromValue=function(e){if(I(e))return A.DateTime;switch(typeof e){case"string":return q(e)?A.Guid:z(e)&&e.length>3?A.Time:V(e)?A.DateTime:A.String;case"boolean":return A.Boolean;case"number":return A.Double}return A.Undefined};var C=/.\d{3}$/;return A.parseTimeFromServer=function(e){if("string"==typeof e)return e;if(e&&"Edm.Time"===e.__edmType){var t=Math.floor(e.ms/1e3);return"PT"+t+"S"}return e},A.parseDateAsUTC=function(e){if("string"==typeof e){var t=C.test(e);e=t?e+"Z":e}return e=new Date(Date.parse(e))},A.parseDateFromServer=A.parseDateAsUTC,A.parseRawValue=function(e,t){if(void 0!==e)return e?(t&&t.parseRawValue&&(e=t.parseRawValue(e)),e):e},A.constants=r,A._resetConstants=a,A.getSymbols().forEach(function(e){e.validatorCtor=t(e)}),A}();se.DataType=xe;var Fe=function(){function e(e,t){return t&&(me(t).whereParam("serviceName").isOptional().whereParam("adapterName").isString().isOptional().whereParam("uriBuilderName").isString().isOptional().whereParam("hasServerMetadata").isBoolean().isOptional().whereParam("jsonResultsAdapter").isInstanceOf(Me).isOptional().whereParam("useJsonp").isBoolean().isOptional().applyAll(e),e.serviceName=e.serviceName&&Fe._normalizeServiceName(e.serviceName),e.adapterInstance=e.adapterName&&we.getAdapterInstance("dataService",e.adapterName),e.uriBuilder=e.uriBuilderName&&we.getAdapterInstance("uriBuilder",e.uriBuilderName)),e}var t=function(t){e(this,t)},r=t.prototype;return r._$typeName="DataService",r.using=function(t){if(!t)return this;var r=new Fe(this);return e(r,t)},t.resolve=function(e){e.push({hasServerMetadata:!0,useJsonp:!1});var t=new Fe(d(e,["serviceName","adapterName","uriBuilderName","hasServerMetadata","jsonResultsAdapter","useJsonp"]));if(!t.serviceName)throw new Error("Unable to resolve a 'serviceName' for this dataService");return t.adapterInstance=t.adapterInstance||we.getAdapterInstance("dataService",t.adapterName),t.jsonResultsAdapter=t.jsonResultsAdapter||t.adapterInstance.jsonResultsAdapter,t.uriBuilder=t.uriBuilder||we.getAdapterInstance("uriBuilder",t.uriBuilderName),t},t._normalizeServiceName=function(e){return e=e.trim(),"/"!==e.substr(-1)?e+"/":e},r.toJSON=function(){return y(this,{serviceName:null,adapterName:null,uriBuilderName:null,hasServerMetadata:null,jsonResultsAdapter:function(e){return e&&e.name},useJsonp:null})},t.fromJSON=function(e){return e.jsonResultsAdapter=we._fetchObject(Me,e.jsonResultsAdapter),new Fe(e)},r.qualifyUrl=function(e){var t=this.serviceName;return ye.stringEndsWith(t,"/")&&(t=t.substr(0,t.length-1)),e="/"+e,ye.stringEndsWith(t,e)||(t+=e),t},t}(),Me=function(){function e(e){return e.results}function t(e){return e.entities||e.Entities||[]}function r(e){return e.keyMappings||e.KeyMappings||[]}function n(e){return e.deletedKeys||e.DeletedKeys||[]}var a=function(a){if(1!==arguments.length)throw new Error("The JsonResultsAdapter ctor should be called with a single argument that is a configuration object.");me(a).whereParam("name").isNonEmptyString().whereParam("extractResults").isFunction().isOptional().withDefault(e).whereParam("extractSaveResults").isFunction().isOptional().withDefault(t).whereParam("extractKeyMappings").isFunction().isOptional().withDefault(r).whereParam("extractDeletedKeys").isFunction().isOptional().withDefault(n).whereParam("visitNode").isFunction().applyAll(this),we._storeObject(this,i._$typeName,this.name)},i=a.prototype;return i._$typeName="JsonResultsAdapter",a}();se.DataService=Fe,se.JsonResultsAdapter=Me;var ke=ye.requireLib("Q;q");ke||(ke=function(){var e="Q is undefined. Are you missing Q.js? See https://github.com/kriskowal/q";throw new Error(e)},ke.defer=ke.resolve=ke.reject=ke),se.config.setQ=function(e){se.Q=ke=e},se.Q=ke;var De=function(){function e(e){var t=[];for(var r in e){var n=e[r];r===n.name&&t.push(e[r])}return t}function t(e,t,r){var a=ae(t.shortName,t.namespace),o=e._getEntityType(a,!0);if(o)return r?n(o,t):o;var s={shortName:t.shortName,namespace:t.namespace,isAbstract:t.isAbstract,autoGeneratedKeyType:qe.fromName(t.autoGeneratedKeyType),defaultResourceName:t.defaultResourceName,custom:t.custom};if(o=t.isComplexType?new je(s):new Ve(s),t.baseTypeName){o.baseTypeName=t.baseTypeName;var u=e._getEntityType(t.baseTypeName,!0);u?i(e,t,o,u):b(e._deferredTypes,t.baseTypeName).push({json:t,stype:o})}else i(e,t,o);return o}function n(e,t){return t.custom&&(e.custom=t.custom),a(e,t.dataProperties),a(e,t.navigationProperties),e}function a(e,t){t&&t.forEach(function(t){var r=t.name;if(!r){if(!t.nameOnServer)throw new Error("Unable to complete 'importMetadata' - cannot locate a 'name' or 'nameOnServer' for one of the imported property nodes");r=e.metadataStore.namingConvention.serverPropertyNameToClient(t.nameOnServer,{})}if(t.custom){var n=e.getProperty(r,!0);n.custom=t.custom}})}function i(e,t,r){t.validators&&(r.validators=t.validators.map(Te.fromJSON)),t.dataProperties.forEach(function(e){r._addPropertyCore(Re.fromJSON(e))});var n=!t.isComplexType;n&&t.navigationProperties&&t.navigationProperties.forEach(function(e){r._addPropertyCore(Ke.fromJSON(e))}),e.addEntityType(r);var a=e._deferredTypes,o=a[r.name];o&&(o.forEach(function(t){i(e,t.json,t.stype)}),delete a[r.name])}function o(e,t,r){if(ne(t))return t;var n=e._shortNameMap[t];if(!n&&r)throw new Error("Unable to locate 'entityTypeName' of: "+t);return n}var s=0,u=function(e){e=e||{},me(e).whereParam("namingConvention").isOptional().isInstanceOf(Be).withDefault(Be.defaultInstance).whereParam("localQueryComparisonOptions").isOptional().isInstanceOf(Ue).withDefault(Ue.defaultInstance).whereParam("serializerFn").isOptional().isFunction().applyAll(this),this.dataServices=[],this._resourceEntityTypeMap={},this._structuralTypeMap={},this._shortNameMap={},this._ctorRegistry={},this._incompleteTypeMap={},this._incompleteComplexTypeMap={},this._id=s++,this.metadataFetched=new ge("metadataFetched",this)},c=u.prototype;return c._$typeName="MetadataStore",ge.bubbleEvent(c,null),u.ANONTYPE_PREFIX="_IB_",u.normalizeTypeName=C(function(e){return e&&te(e).typeName}),c.setProperties=function(e){me(e).whereParam("name").isString().isOptional().whereParam("serializerFn").isFunction().isOptional().applyAll(this)},c.addDataService=function(e,t){he(e,"dataService").isInstanceOf(Fe).check(),he(t,"shouldOverwrite").isBoolean().isOptional().check();var r=this._getDataServiceIndex(e.serviceName);if(r>=0){if(!t)throw new Error("A dataService with this name '"+e.serviceName+"' already exists in this MetadataStore");this.dataServices[r]=e}else this.dataServices.push(e)},c._getDataServiceIndex=function(e){return w(this.dataServices,function(t){return t.serviceName===e})},c.addEntityType=function(e){if(e instanceof Ve||e instanceof je||(e=e.isComplexType?new je(e):new Ve(e)),!e.isComplexType){if(e.baseTypeName&&!e.baseEntityType){var t=this._getEntityType(e.baseTypeName,!0);e._updateFromBase(t)}if(0===e.keyProperties.length&&!e.isAbstract)throw new Error("Unable to add "+e.name+" to this MetadataStore.  An EntityType must have at least one property designated as a key property - See the 'DataProperty.isPartOfKey' property.")}if(e.metadataStore=this,!e.isAnonymous){if(this._structuralTypeMap[e.name])throw new Error("Type "+e.name+" already exists in this MetadataStore.");this._structuralTypeMap[e.name]=e,this._shortNameMap[e.shortName]=e.name}if(e.getProperties().forEach(function(t){e._updateNames(t),t.isUnmapped||e._mappedPropertiesCount++}),e._updateCps(),!e.isComplexType){e._updateNps();var r=e.defaultResourceName||e.baseEntityType&&e.baseEntityType.defaultResourceName;r&&!this.getEntityTypeNameForResourceName(r)&&this.setEntityTypeForResourceName(r,e.name),e.defaultResourceName=r,e.getEntityCtor()}},c.exportMetadata=function(){var e=JSON.stringify({metadataVersion:se.metadataVersion,name:this.name,namingConvention:this.namingConvention.name,localQueryComparisonOptions:this.localQueryComparisonOptions.name,dataServices:this.dataServices,structuralTypes:r(this._structuralTypeMap),resourceEntityTypeMap:this._resourceEntityTypeMap},null,we.stringifyPad);return e},c.importMetadata=function(e,r){he(r,"allowMerge").isOptional().isBoolean().check(),this._deferredTypes={};var n="string"==typeof e?JSON.parse(e):e;if(n.schema)return Ie.parse(this,n.schema,n.altMetadata);if(n.metadataVersion&&n.metadataVersion!==se.metadataVersion){var a=G("Cannot import metadata with a different 'metadataVersion' (%1) than the current 'breeze.metadataVersion' (%2) ",n.metadataVersion,se.metadataVersion);throw new Error(a)}var i=n.namingConvention,o=n.localQueryComparisonOptions;if(this.isEmpty())this.namingConvention=we._fetchObject(Be,i)||this.namingConvention,this.localQueryComparisonOptions=we._fetchObject(Ue,o)||this.localQueryComparisonOptions;else{if(i&&this.namingConvention.name!==i)throw new Error("Cannot import metadata with a different 'namingConvention' from the current MetadataStore");
if(o&&this.localQueryComparisonOptions.name!==o)throw new Error("Cannot import metadata with different 'localQueryComparisonOptions' from the current MetadataStore")}var s=this;n.dataServices&&n.dataServices.forEach(function(e){e=Fe.fromJSON(e),s.addDataService(e,!0)});this._structuralTypeMap;return n.structuralTypes&&n.structuralTypes.forEach(function(e){t(s,e,r)}),p(this._resourceEntityTypeMap,n.resourceEntityTypeMap),p(this._incompleteTypeMap,n.incompleteTypeMap),this},u.importMetadata=function(e){var t=new De;return t.importMetadata(e),t},c.hasMetadataFor=function(e){return!!this.getDataService(e)},c.getDataService=function(e){return he(e,"serviceName").isString().check(),e=Fe._normalizeServiceName(e),g(this.dataServices,function(t){return t.serviceName===e})},c.fetchMetadata=function(e,t,r){try{if(he(e,"dataService").isString().or().isInstanceOf(Fe).check(),he(t,"callback").isFunction().isOptional().check(),he(r,"errorCallback").isFunction().isOptional().check(),"string"==typeof e&&(e=this.getDataService(e)||new Fe({serviceName:e})),e=Fe.resolve([e]),this.hasMetadataFor(e.serviceName))throw new Error("Metadata for a specific serviceName may only be fetched once per MetadataStore. ServiceName: "+e.serviceName);var n=this;return e.adapterInstance.fetchMetadata(this,e).then(function(r){return n.metadataFetched.publish({metadataStore:n,dataService:e,rawMetadata:r}),t&&t(r),ke.resolve(r)},function(e){return r&&r(e),ke.reject(e)})}catch(a){return ke.reject(a)}},c.trackUnmappedType=function(e,t){he(e,"entityCtor").isFunction().check(),he(t,"interceptor").isFunction().isOptional().check();var r=new Ve(this);r._setCtor(e,t)},c.registerEntityTypeCtor=function(e,t,r,n){he(e,"structuralTypeName").isString().check(),he(t,"aCtor").isFunction().isOptional().check(),he(r,"initFn").isOptional().isFunction().or().isString().check(),he(n,"noTrackingFn").isOptional().isFunction().check();var a=o(this,e,!1),i=a||e;if(t&&(t._$typeName&&t._$typeName!=i&&console.warn("Registering a constructor for "+i+" that is already used for "+t._$typeName+"."),t._$typeName=i),this._ctorRegistry[i]={ctor:t,initFn:r,noTrackingFn:n},a){var s=this._structuralTypeMap[a];s&&s.getCtor(!0)}},c.isEmpty=function(){return U(this._structuralTypeMap)},c.getEntityType=function(e,t){return he(e,"structuralTypeName").isString().check(),he(t,"okIfNotFound").isBoolean().isOptional().check(!1),this._getEntityType(e,t)},c._getEntityType=function(e,t){var r=o(this,e,!1),n=this._structuralTypeMap[r];if(!n){if(t)return null;var a=G("Unable to locate a 'Type' by the name: '%1'. Be sure to execute a query or call fetchMetadata first.",e);throw new Error(a)}if(n.length){var i=n.join(",");throw new Error("There are multiple types with this 'shortName': "+i)}return n},c.getEntityTypes=function(){return e(this._structuralTypeMap)},c.getIncompleteNavigationProperties=function(){return r(this._incompleteTypeMap,function(e,t){return t})},c.getEntityTypeNameForResourceName=function(e){return he(e,"resourceName").isString().check(),this._resourceEntityTypeMap[e]},c.setEntityTypeForResourceName=function(e,t){he(e,"resourceName").isString().check(),he(t,"entityTypeOrName").isInstanceOf(Ve).or().isString().check();var r;r=t instanceof Ve?t.name:o(this,t,!0),this._resourceEntityTypeMap[e]=r;var n=this._getEntityType(r,!0);n&&!n.defaultResourceName&&(n.defaultResourceName=e)},c._checkEntityType=function(e){if(!e.entityType){var t=e.prototype._$typeName;if(!t)throw new Error("This entity has not been registered. See the MetadataStore.registerEntityTypeCtor method");var r=this._getEntityType(t);r&&(e.entityType=r)}},u}(),Ie=function(){function e(e,r,a){e._entityTypeResourceMap={},r=m(r),r.forEach(function(a){if(a.cSpaceOSpaceMapping){var i=JSON.parse(a.cSpaceOSpaceMapping),o={};i.forEach(function(e){o[e[0]]=e[1]}),a.cSpaceOSpaceMapping=o}a.entityContainer&&m(a.entityContainer).forEach(function(t){m(t.entitySet).forEach(function(t){var r=d(t.entityType,a).typeName;e.setEntityTypeForResourceName(t.name,r),e._entityTypeResourceMap[r]=t.name})}),a.complexType&&m(a.complexType).forEach(function(t){n(t,a,e)}),a.entityType&&m(a.entityType).forEach(function(n){t(n,a,r,e)})});var i=e.getIncompleteNavigationProperties();if(i.length>0){var o=i.map(function(e){return Array.isArray(e)?e.map(function(e){return e.parentType.name+":"+e.name}).join(", "):e.parentType.name+":"+e.name}).join(", ");throw new Error("Incomplete navigation properties: "+o)}return a&&e.importMetadata(a,!0),e}function t(e,t,n,a){var i=e.name,o=v(i,t),s=new Ve({shortName:i,namespace:o,isAbstract:e["abstract"]&&"true"===e["abstract"]});if(e.baseType){var u=d(e.baseType,t).typeName;s.baseTypeName=u;var p=a._getEntityType(u,!0);if(p)r(s,e,t,n,a);else{var c=a._deferredTypes[u];c||(c=[],a._deferredTypes[u]=c),c.push({entityType:s,csdlEntityType:e})}}else r(s,e,t,n,a);return s}function r(e,t,n,i,o){var p=t.key?m(t.key.propertyRef).map(s("name")):[];m(t.property).forEach(function(t){a(e,t,n,p)}),m(t.navigationProperty).forEach(function(t){u(e,t,n,i)}),o.addEntityType(e),e.defaultResourceName=o._entityTypeResourceMap[e.name];var c=o._deferredTypes,l=c[e.name];l&&(l.forEach(function(e){r(e.entityType,e.csdlEntityType,n,i,o)}),delete c[e.name])}function n(e,t,r){var n=e.name,i=v(n,t),o=new je({shortName:n,namespace:i});return m(e.property).forEach(function(e){a(o,e,t)}),r.addEntityType(o),o}function a(e,t,r,n){var a,s=t.type.split(".");return"Edm"===s[0]&&2===s.length?a=i(e,t,n):p(t,r)?(a=i(e,t,n),a&&(a.enumType=t.type)):a=o(e,t,r),a&&(e._addPropertyCore(a),y(a)),a}function i(e,t,r){var n=xe.fromEdmDataType(t.type);if(null==n)return e.warnings.push("Unable to recognize DataType for property: "+t.name+" DateType: "+t.type),null;var a="true"===t.nullable||null==t.nullable,i=null!=r&&r.indexOf(t.name)>=0;i&&e.autoGeneratedKeyType===qe.None&&f(t)&&(e.autoGeneratedKeyType=qe.Identity);var o=t.maxLength;o=null==o||"Max"===o?null:parseInt(o,10);var s=new Re({nameOnServer:t.name,dataType:n,isNullable:a,isPartOfKey:i,maxLength:o,defaultValue:t.defaultValue,concurrencyMode:t.concurrencyMode});return n===xe.Undefined&&(s.rawTypeName=t.type),s}function o(e,t,r){var n=d(t.type,r).typeName,a=new Re({nameOnServer:t.name,complexTypeName:n,isNullable:!1});return a}function u(e,t,r,n){var a=h(t,r,n);if(!a)throw new Error("Unable to resolve Foreign Key Association: "+t.relationship);var i=g(a.end,function(e){return e.role===t.toRole}),o="*"!==i.multiplicity,u=d(i.type,r).typeName,p=a.referentialConstraint;if(p||"*"!=a.end[0].multiplicity||"*"!=a.end[1].multiplicity){var c={nameOnServer:t.name,entityTypeName:u,isScalar:o,associationName:a.name};if(p){var l=p.principal,y=p.dependent,f=m(y.propertyRef),v=f.map(s("name"));t.fromRole===l.role?c.invForeignKeyNamesOnServer=v:c.foreignKeyNamesOnServer=v}var w=new Ke(c);return e._addPropertyCore(w),w}}function p(e,t){return t.enumType?c(e,t):!!t.extensions&&l(e,t)}function c(e,t){var r=m(t.enumType),n=e.type.split("."),a=n[n.length-1];return r.some(function(e){return e.name===a})}function l(e,t){var r=t.extensions.filter(function(e){return"EnumType"===e.name}),n=e.type.split("."),a=n[n.length-1];return r.some(function(e){return e.attributes.some(function(e){return"Name"===e.name&&e.value===a})})}function y(e){var t;if(e.isNullable||e.validators.push(Te.required()),!e.isComplexProperty){if(e.dataType===xe.String)if(e.maxLength){var r={maxLength:e.maxLength};t=Te.maxLength(r)}else t=Te.string();else t=e.dataType.validatorCtor();e.validators.push(t)}}function f(e){var t=g(Object.keys(e),function(e){return e.indexOf("StoreGeneratedPattern")>=0});if(t)return"Identity"===e[t];var r=e.extensions;if(!r)return!1;var n=g(r,function(e){return"StoreGeneratedPattern"===e.name&&"Identity"===e.value});return!!n}function h(e,t,r){var n=d(e.relationship,t),a=n.namespace,i=g(r,function(e){return e.namespace===a});if(!i)return null;var o=n.shortTypeName,s=i.association;if(!s)return null;Array.isArray(s)||(s=[s]);var u=g(s,function(e){return e.name===o});return u}function d(e,t){var r=te(e);if(t&&t.cSpaceOSpaceMapping){var n=v(r.shortTypeName,t);n&&(r=re(r.shortTypeName,n))}return r}function v(e,t){var r,n=t.cSpaceOSpaceMapping;if(n){var a=n[t.namespace+"."+e];if(r=a&&a.substr(0,a.length-(e.length+1)))return r}return t.entityType||"Default"!=t.namespace?t.namespace:null}return{parse:e}}(),Ve=function(){function e(e,t){return e.entityAspect||e.complexAspect?e.getProperty(t.name):e[t.name]}function t(e){var t=e.name.replace(/\W/g,"_");return Function("return function "+t+"(){}")()}function r(e,t){var n=e.complexAspect.parentProperty.dataType.dataProperties,a=n.every(function(n){if(!n.isSettable)return!0;var a=e.getProperty(n.name),i=t.getProperty(n.name);if(n.isComplexProperty)return r(a,i);var o=n.dataType;return a===i||o&&o.normalize&&a&&i&&o.normalize(a)===o.normalize(i)});return a}function n(e){return e.filter(function(e){return null==e.baseProperty})}function i(e,t,r){var n=r+"OnServer",a=t[r];if(a&&a.length){var i=m(a).map(function(r){var n=e.clientPropertyNameToServer(r,t),a=e.serverPropertyNameToClient(n,t);if(r!==a)throw new Error("NamingConvention for this client property name does not roundtrip properly:"+r+"-->"+a);return n});t[n]=Array.isArray(a)?i:i[0]}else{var o=t[n];if(!o||0===o.length)return;var s=m(o).map(function(r){var n=e.serverPropertyNameToClient(r,t),a=e.clientPropertyNameToServer(n,t);if(r!==a)throw new Error("NamingConvention for this server property name does not roundtrip properly:"+r+"-->"+a);return n});t[r]=Array.isArray(o)?s:s[0]}}function u(e,t){var r=t._getEntityType(e.complexTypeName,!0);if(!r)return!1;if(!(r instanceof je))throw new Error("Unable to resolve ComplexType with the name: "+e.complexTypeName+" for the property: "+property.name);return e.dataType=r,e.defaultValue=null,!0}function p(e,t){if(e.entityType)return!0;var r=t._getEntityType(e.entityTypeName,!0);if(r)e.entityType=r,e._resolveNp();else{var n=b(t._incompleteTypeMap,e.entityTypeName);S(n,e)}return!!r}function c(e,t){var r=e.getPropertyNames(),n=Se.getDefaultInstance(),i=n.getTrackablePropertyNames(t);i.forEach(function(n){if(r.indexOf(n)===-1){var i=t[n];try{"function"==typeof i&&(i=i())}catch(o){}var s=xe.fromValue(i),u=new Re({name:n,dataType:s,isNullable:!0,isUnmapped:!0});u.isSettable=a(t,n),e.subtypes&&e.subtypes.length?e.getSelfAndSubtypes().forEach(function(e){e._addPropertyCore(new Re(u))}):e._addPropertyCore(u)}})}var l=0,f=function(e){if(arguments.length>1)throw new Error("The EntityType ctor has a single argument that is either a 'MetadataStore' or a configuration object.");"MetadataStore"===e._$typeName?(this.metadataStore=e,this.shortName="Anon_"+ ++l,this.namespace="",this.isAnonymous=!0):me(e).whereParam("shortName").isNonEmptyString().whereParam("namespace").isString().isOptional().withDefault("").whereParam("baseTypeName").isString().isOptional().whereParam("isAbstract").isBoolean().isOptional().withDefault(!1).whereParam("autoGeneratedKeyType").isEnumOf(qe).isOptional().withDefault(qe.None).whereParam("defaultResourceName").isNonEmptyString().isOptional().withDefault(null).whereParam("dataProperties").isOptional().whereParam("navigationProperties").isOptional().whereParam("serializerFn").isOptional().isFunction().whereParam("custom").isOptional().applyAll(this),this.name=ae(this.shortName,this.namespace),this.dataProperties=[],this.navigationProperties=[],this.complexProperties=[],this.keyProperties=[],this.foreignKeyProperties=[],this.inverseForeignKeyProperties=[],this.concurrencyProperties=[],this.unmappedProperties=[],this.validators=[],this.warnings=[],this._mappedPropertiesCount=0,this.subtypes=[],ie(this,e.dataProperties,Re),ie(this,e.navigationProperties,Ke)},h=f.prototype,d=xe.parseRawValue;return h._$typeName="EntityType",f.qualifyTypeName=ae,h.setProperties=function(e){me(e).whereParam("autoGeneratedKeyType").isEnumOf(qe).isOptional().whereParam("defaultResourceName").isString().isOptional().whereParam("serializerFn").isFunction().isOptional().whereParam("custom").isOptional().applyAll(this),e.defaultResourceName&&(this.defaultResourceName=e.defaultResourceName)},h.isSubtypeOf=function(e){he(e,"entityType").isInstanceOf(Ve).check();var t=this;do{if(t===e)return!0;t=t.baseEntityType}while(t);return!1},h.getSelfAndSubtypes=function(){var e=[this];return this.subtypes.forEach(function(t){var r=t.getSelfAndSubtypes();e.push.apply(e,r)}),e},h.getAllValidators=function(){for(var e=this.validators.slice(0),t=this.baseEntityType;t;)e.push.apply(e,t.validators),t=t.baseEntityType;return e},h.addProperty=function(e){he(e,"property").isInstanceOf(Re).or().isInstanceOf(Ke).check();var t=this._addPropertyCore(e,!0);if(this.subtypes&&this.subtypes.length){var r=this;r.getSelfAndSubtypes().forEach(function(t){t!==r&&(e.isNavigationProperty?t._addPropertyCore(new Ke(e),!0):t._addPropertyCore(new Re(e),!0))})}return t},h._updateFromBase=function(e){this.baseEntityType=e,this.autoGeneratedKeyType===qe.None&&(this.autoGeneratedKeyType=e.autoGeneratedKeyType),e.dataProperties.forEach(function(e){var t=new Re(e);t.validators=[],t.baseProperty=e,this._addPropertyCore(t)},this),e.navigationProperties.forEach(function(e){var t=new Ke(e);t.validators=[],t.baseProperty=e,this._addPropertyCore(t)},this),e.subtypes.push(this)},h._addPropertyCore=function(e,t){if(this.isFrozen)throw new Error("The '"+this.name+"' EntityType/ComplexType has been frozen. You can only add properties to an EntityType/ComplexType before any instances of that type have been created and attached to an entityManager.");var r=e.parentType;if(r){if(r!==this)throw new Error("This property: "+e.name+" has already been added to "+e.parentType.name);return this}e.parentType=this;var n=this.metadataStore;if(e.isDataProperty?this._addDataProperty(e):(this._addNavigationProperty(e),t&&n&&p(e,n)),!n||e.name&&e.nameOnServer||i(n.namingConvention,e,"name"),n&&this._extra&&this._extra.alreadyWrappedProps){var a=this._ctor.prototype;Se.getDefaultInstance().initializeEntityPrototype(a)}return this},h.createEntity=function(t){if(t&&t._$eref&&!t._$eref.entityAspect.entityManager)return t._$eref;var r=this._createInstanceCore();return t&&(this.keyProperties.every(function(e){return null!=t[e.name]})&&(t._$eref=r),this._updateTargetFromRaw(r,t,e),this.navigationProperties.forEach(function(e){var n,a=t[e.name];if(void 0!=a){var i=e.entityType;if(e.isScalar)n=a.entityAspect?a:i.createEntity(a),r.setProperty(e.name,n);else{var o=r.getProperty(e.name);a.forEach(function(e){n=e.entityAspect?e:i.createEntity(e),o.push(n)})}}})),this._initializeInstance(r),r},h._createInstanceCore=function(){var e=this.getEntityCtor(),t=new e;return new Ne(t),t},h._initializeInstance=function(e){this.baseEntityType&&this.baseEntityType._initializeInstance(e);var t=this.initFn;t&&("string"==typeof t&&(t=e[t]),t(e)),this.complexProperties&&this.complexProperties.forEach(function(t){var r=e.getProperty(t.name);Array.isArray(r)?r.forEach(function(e){t.dataType._initializeInstance(e)}):t.dataType._initializeInstance(r)}),e.entityAspect&&(e.entityAspect._initialized=!0)},h.getCtor=h.getEntityCtor=function(e){if(this._ctor&&!e)return this._ctor;var r=this.metadataStore._ctorRegistry,n=r[this.name]||r[this.shortName]||{},a=n.ctor||this._ctor,i=a&&a.prototype&&(a.prototype.entityType||a.prototype.complexType);if(i&&i.metadataStore!==this.metadataStore)throw new Error("Cannot register the same constructor for "+this.name+" in different metadata stores.  Please define a separate constructor for each metadata store.");if(n.ctor&&e&&(this._extra=void 0),!a){var o=Se.getDefaultInstance().createCtor;a=o?o(this):t(this)}return this.initFn=n.initFn,this.noTrackingFn=n.noTrackingFn,a.prototype._$typeName=this.name,this._setCtor(a),a},h._setCtor=function(e,t){var r=e.prototype;this._extra=this._extra||{};var n=new e;c(this,n),"EntityType"===this._$typeName?r.entityType=this:r.complexType=this,r._$interceptor=t||H,Se.getDefaultInstance().initializeEntityPrototype(r),this._ctor=e},h.addValidator=function(e,t){he(e,"validator").isInstanceOf(Te).check(),he(t,"property").isOptional().isString().or().isEntityProperty().check(),t?("string"==typeof t&&(t=this.getProperty(t,!0)),t.validators.push(e)):this.validators.push(e)},h.getProperties=function(){return this.dataProperties.concat(this.navigationProperties)},h.getPropertyNames=function(){return this.getProperties().map(s("name"))},h.getDataProperty=function(e){return g(this.dataProperties,o("name",e))},h.getNavigationProperty=function(e){return g(this.navigationProperties,o("name",e))},h.getProperty=function(e,t){var r=this.getPropertiesOnPath(e,!1,t);return r?r[r.length-1]:null},h.getPropertiesOnPath=function(e,t,r){r=r||!1;var n=Array.isArray(e)?e:e.trim().split("."),a=!0,i=this,s=t?"nameOnServer":"name",u=n.map(function(e){var t=g(i.getProperties(),o(s,e));if(t)i=t.isNavigationProperty?t.entityType:t.dataType;else{if(r)throw new Error("unable to locate property: "+e+" on entityType: "+i.name);a=!1}return t});return a?u:null},h.clientPropertyPathToServer=function(e,t){var r,t=t||".";if(this.isAnonymous){var n=this.metadataStore.namingConvention.clientPropertyNameToServer;r=e.split(".").map(function(e){return n(e)})}else r=this.getPropertiesOnPath(e,!1,!0).map(function(e){return e.nameOnServer});return r.join(t)},h.getEntityKeyFromRawEntity=function(e,t){var r=this.keyProperties.map(function(r){var n=t(e,r);return d(n,r.dataType)});return new Ae(this,r)},h._updateTargetFromRaw=function(e,t,n){this.dataProperties.forEach(function(a){if(a.isSettable){var i=n(t,a);if(void 0!==i){var o,s=a.dataType;if(a.isComplexProperty){if(null===i)return;if(o=e.getProperty(a.name),a.isScalar)s._updateTargetFromRaw(o,i,n);else if(Array.isArray(i)){var u=i.map(function(t){var r=s._createInstanceCore(e,a);return s._updateTargetFromRaw(r,t,n),s._initializeInstance(r),r});P(o,u,r)||(o.length=0,u.forEach(function(e){o.push(e)}))}else o.length=0}else{if(a.isScalar){var u=d(i,s);e.setProperty(a.name,u)}else if(o=e.getProperty(a.name),Array.isArray(i)){var u=i.map(function(e){return d(e,s)});P(o,u)||(o.length=0,u.forEach(function(e){o.push(e)}))}else o.length=0}}}});var a=t.entityAspect||t.complexAspect;if(a){var i=e.entityAspect||e.complexAspect;a.originalValuesMap&&(i.originalValues=a.originalValuesMap),a.extraMetadata&&(i.extraMetadata=a.extraMetadata)}},h.toString=function(){return this.name},h.toJSON=function(){return y(this,{shortName:null,namespace:null,baseTypeName:null,isAbstract:!1,autoGeneratedKeyType:null,defaultResourceName:null,dataProperties:n,navigationProperties:n,validators:null,custom:null})},h._updateNames=function(e){var t=this.metadataStore.namingConvention;i(t,e,"name"),e.isNavigationProperty&&(i(t,e,"foreignKeyNames"),i(t,e,"invForeignKeyNames"))},h._checkNavProperty=function(e){if(e.isNavigationProperty){if(e.parentType!==this)throw new Error(G("The navigationProperty '%1' is not a property of entity type '%2'",e.name,this.name));return e}if("string"==typeof e){var t=this.getProperty(e);if(t&&t.isNavigationProperty)return t}throw new Error("The 'navigationProperty' parameter must either be a NavigationProperty or the name of a NavigationProperty")},h._addDataProperty=function(e){this.dataProperties.push(e),e.isPartOfKey&&this.keyProperties.push(e),e.isComplexProperty&&this.complexProperties.push(e),e.concurrencyMode&&"None"!==e.concurrencyMode&&this.concurrencyProperties.push(e),e.isUnmapped&&this.unmappedProperties.push(e)},h._addNavigationProperty=function(e){this.navigationProperties.push(e),ne(e.entityTypeName)||(e.entityTypeName=ae(e.entityTypeName,this.namespace))},h._updateCps=function(){var e=this.metadataStore,t=e._incompleteComplexTypeMap;this.complexProperties.forEach(function(r){r.complexType||u(r,e)||b(t,r.complexTypeName).push(r)}),this.isComplexType&&((t[this.name]||[]).forEach(function(t){u(t,e)}),delete t[this.name])},h._updateNps=function(){var e=this.metadataStore;this.navigationProperties.forEach(function(t){p(t,e)});var t=e._incompleteTypeMap;(t[this.name]||[]).forEach(function(t){p(t,e)}),delete t[this.name]},f}(),je=function(){var e=function(e){if(arguments.length>1)throw new Error("The ComplexType ctor has a single argument that is a configuration object.");me(e).whereParam("shortName").isNonEmptyString().whereParam("namespace").isString().isOptional().withDefault("").whereParam("dataProperties").isOptional().whereParam("isComplexType").isOptional().isBoolean().whereParam("custom").isOptional().applyAll(this),this.name=ae(this.shortName,this.namespace),this.isComplexType=!0,this.dataProperties=[],this.complexProperties=[],this.validators=[],this.concurrencyProperties=[],this.unmappedProperties=[],this.navigationProperties=[],this.keyProperties=[],ie(this,e.dataProperties,Re)},t=e.prototype;return t.setProperties=function(e){me(e).whereParam("custom").isOptional().applyAll(this)},t.getAllValidators=function(){return this.validators},t._createInstanceCore=function(e,t){var r=this.getCtor(),n=new r;return new Oe(n,e,t),n},t.addProperty=function(e){return he(e,"dataProperty").isInstanceOf(Re).check(),this._addPropertyCore(e)},t.getProperties=function(){return this.dataProperties},t=p(t,Ve.prototype,["addValidator","getProperty","getPropertiesOnPath","getPropertyNames","_addPropertyCore","_addDataProperty","_updateNames","_updateCps","_initializeInstance","_updateTargetFromRaw","_setCtor"]),t.createInstance=Ve.prototype.createEntity,t.getCtor=Ve.prototype.getEntityCtor,t.toJSON=function(){return y(this,{shortName:null,namespace:null,isComplexType:null,dataProperties:null,validators:null,custom:null})},t._$typeName="ComplexType",e}(),Re=function(){var e=function(e){me(e).whereParam("name").isString().isOptional().whereParam("nameOnServer").isString().isOptional().whereParam("dataType").isEnumOf(xe).isOptional().or().isString().or().isInstanceOf(je).whereParam("complexTypeName").isOptional().whereParam("isNullable").isBoolean().isOptional().withDefault(!0).whereParam("isScalar").isOptional().withDefault(!0).whereParam("defaultValue").isOptional().whereParam("isPartOfKey").isBoolean().isOptional().whereParam("isUnmapped").isBoolean().isOptional().whereParam("isSettable").isBoolean().isOptional().withDefault(!0).whereParam("concurrencyMode").isString().isOptional().whereParam("maxLength").isNumber().isOptional().whereParam("validators").isInstanceOf(Te).isArray().isOptional().withDefault([]).whereParam("displayName").isOptional().whereParam("enumType").isOptional().whereParam("rawTypeName").isOptional().whereParam("custom").isOptional().applyAll(this);var t=!(!this.name&&!this.nameOnServer);if(!t)throw new Error("A DataProperty must be instantiated with either a 'name' or a 'nameOnServer' property");if(this.complexTypeName)this.isComplexProperty=!0,this.dataType=null;else if("string"==typeof this.dataType){var r=xe.fromName(this.dataType);if(!r)throw new Error("Unable to find a DataType enumeration by the name of: "+this.dataType);this.dataType=r}else this.dataType||(this.dataType=xe.String);if(null==this.defaultValue){if(this.isNullable)this.defaultValue=null;else if(this.isComplexProperty);else if(this.dataType===xe.Binary)this.defaultValue="AAAAAAAAJ3U=";else if(this.defaultValue=this.dataType.defaultValue,null==this.defaultValue)throw new Error("A nonnullable DataProperty cannot have a null defaultValue. Name: "+(this.name||this.nameOnServer))}else this.dataType.isNumeric&&"string"==typeof this.defaultValue&&(this.defaultValue=parseFloat(this.defaultValue));this.isComplexProperty&&(this.isScalar=null==this.isScalar||this.isScalar===!0)},t=e.prototype;return t._$typeName="DataProperty",e.getRawValueFromServer=function(e,t){if(t.isUnmapped)return e[t.nameOnServer||t.name];var r=e[t.nameOnServer];return void 0!==r?r:t.defaultValue},e.getRawValueFromClient=function(e,t){var r=e[t.name];return void 0!==r?r:t.defaultValue},t.isDataProperty=!0,t.isNavigationProperty=!1,t.resolveProperty=function(e){for(var t=this[e],r=this.baseProperty;void 0==t&&null!=r;)t=r[e],r=r.baseProperty;return t},t.formatName=function(){return this.parentType.name+"--"+this.name},t.setProperties=function(e){me(e).whereParam("displayName").isOptional().whereParam("custom").isOptional().applyAll(this)},t.getAllValidators=function(){for(var e=this.validators.slice(0),t=this.baseProperty;t;)e.push.apply(e,t.validators),t=t.baseProperty;return e},t.toJSON=function(){return y(this,{name:null,dataType:function(e){return e&&e.parentEnum?e.name:void 0},complexTypeName:null,isNullable:!0,defaultValue:null,isPartOfKey:!1,isUnmapped:!1,isSettable:!0,concurrencyMode:null,maxLength:null,validators:null,displayName:null,enumType:null,rawTypeName:null,isScalar:!0,custom:null})},e.fromJSON=function(e){return e.dataType=xe.fromName(e.dataType),e.defaultValue&&e.dataType&&e.dataType.parse&&(e.defaultValue=e.dataType.parse(e.defaultValue,typeof e.defaultValue)),e.validators&&(e.validators=e.validators.map(Te.fromJSON)),new Re(e)},e}(),Ke=function(){function e(e,t){throw new Error("Cannot set the inverse property for: "+e.formatName()+". "+t)}function t(e,t){throw new Error("Cannot create inverse for: "+e.formatName()+". The entityType for this navigation property "+t)}function r(e){var t=e.foreignKeyNames;if(0!==t.length){var r=e.parentType,n=t.map(function(e){return r.getDataProperty(e)}),a=r.foreignKeyProperties;n.forEach(function(t){S(a,t),t.relatedNavigationProperty=e,S(e.entityType.inverseForeignKeyProperties,t),e.relatedDataProperties?S(e.relatedDataProperties,t):e.relatedDataProperties=[t]})}}var n=function(e){me(e).whereParam("name").isString().isOptional().whereParam("nameOnServer").isString().isOptional().whereParam("entityTypeName").isString().whereParam("isScalar").isBoolean().isOptional().withDefault(!0).whereParam("associationName").isString().isOptional().whereParam("foreignKeyNames").isArray().isString().isOptional().withDefault([]).whereParam("foreignKeyNamesOnServer").isArray().isString().isOptional().withDefault([]).whereParam("invForeignKeyNames").isArray().isString().isOptional().withDefault([]).whereParam("invForeignKeyNamesOnServer").isArray().isString().isOptional().withDefault([]).whereParam("validators").isInstanceOf(Te).isArray().isOptional().withDefault([]).whereParam("displayName").isOptional().whereParam("custom").isOptional().applyAll(this);var t=!(!this.name&&!this.nameOnServer);if(!t)throw new Error("A Navigation property must be instantiated with either a 'name' or a 'nameOnServer' property")},a=n.prototype;return a._$typeName="NavigationProperty",a.isDataProperty=!1,a.isNavigationProperty=!0,p(a,Re.prototype,["formatName","getAllValidators","resolveProperty"]),a.setProperties=function(e){if(!this.parentType)throw new Error("Cannot call NavigationProperty.setProperties until the parent EntityType of the NavigationProperty has been set.");var t=e.inverse;t&&delete e.inverse,me(e).whereParam("displayName").isOptional().whereParam("foreignKeyNames").isArray().isString().isOptional().withDefault([]).whereParam("invForeignKeyNames").isArray().isString().isOptional().withDefault([]).whereParam("custom").isOptional().applyAll(this),this.parentType._updateNames(this),this._resolveNp(),t&&this.setInverse(t)},a.getInverse=function(){for(var e=this;!e.inverse&&e.baseProperty;)e=e.baseProperty;return e.inverse},a.setInverse=function(t){var r;if(r="string"==typeof t?this.entityType.getNavigationProperty(t):t,!r)throw e(this,"Unable to find inverse property: "+invNpName);(this.inverse||r.inverse)&&e(this,"It has already been set on one side or the other."),r.entityType!=this.parentType&&e(this,r.formatName+" is not a valid inverse property for this."),this.associationName?r.associationName=this.associationName:(r.associationName||(r.associationName=this.formatName()+"_"+r.formatName()),this.associationName=r.associationName),this._resolveNp(),r._resolveNp()},a.createInverse=function(e){this.entityType||t(this,"has not yet been defined."),this.entityType.isFrozen&&t(this,"is frozen.");var r=this.entityType.metadataStore;null==r&&t(this,"has not yet been added to the metadataStore."),e.entityTypeName=this.parentEntityType.name,e.associationName=this.associationName;var n=new Ke(e);return this.parentEntityType.addNavigationProperty(n),n},a.toJSON=function(){return y(this,{name:null,entityTypeName:null,isScalar:null,associationName:null,validators:null,displayName:null,foreignKeyNames:null,invForeignKeyNames:null,custom:null})},n.fromJSON=function(e){return e.validators&&(e.validators=e.validators.map(Te.fromJSON)),new Ke(e)},a._resolveNp=function(){var e=this,t=e.entityType,n=g(t.navigationProperties,function(t){return t.associationName===e.associationName&&(t.name!==e.name||t.entityTypeName!==e.entityTypeName)});e.inverse=n,n||e.invForeignKeyNames.forEach(function(r){var n=t.getDataProperty(r);if(!n)throw new Error("EntityType '"+e.entityTypeName+"' has no foreign key matching '"+r+"'");var a=e.parentType;n.inverseNavigationProperty=g(a.navigationProperties,function(e){return e.invForeignKeyNames&&e.invForeignKeyNames.indexOf(n.name)>=0&&e.entityType===n.parentType}),S(t.foreignKeyProperties,n)}),r(e)},n}(),qe=function(){var e=new ve("AutoGeneratedKeyType");return e.None=e.addSymbol(),e.Identity=e.addSymbol(),e.KeyGenerator=e.addSymbol(),e.resolveSymbols(),e}();!function(){function e(e,t){return null!=t&&void 0!==t.entityType}function t(e,t){return null!=t&&(t.isDataProperty||t.isNavigationProperty)}var r=fe.prototype;r.isEntity=function(){return this._addContext({fn:e,msg:" must be an entity"})},r.isEntityProperty=function(){return this._addContext({fn:t,msg:" must be either a DataProperty or a NavigationProperty"})}}(),se.MetadataStore=De,se.EntityType=Ve,se.ComplexType=je,se.DataProperty=Re,se.NavigationProperty=Ke,se.AutoGeneratedKeyType=qe;var ze=function(){function e(e,t,r){var n=t.name+".."+t.parentType.name,a=e._tempIdMap[n];return a||r&&(a={entityType:t.parentType,propertyName:t.name,keyMap:{}},e._tempIdMap[n]=a),a}var t=function(){this._tempIdMap={}},r=t.prototype;return r.generateTempKeyValue=function(t,r){var n=t.keyProperties;if(n.length>1)throw new Error("Ids can not be autogenerated for entities with multipart keys");var a,i=n[0],o=e(this,i,!0);if(null!=r&&(o.keyMap[r.toString()]||(a=r)),void 0===a){var s=i.dataType;if(!s.getNext)throw new Error("Cannot use a property with a dataType of: "+s.toString()+" for id generation");for(a=s.getNext(this);null!=o.keyMap[a.toString()];)a=s.getNext(this)}return o.keyMap[a.toString()]=!0,a},r.getTempKeys=function(){var e=[];for(var t in this._tempIdMap){var r=this._tempIdMap[t],n=r.entityType;for(var a in r.keyMap)e.push(new Ae(n,[a]))}return e},r.isTempKey=function(t){var r=t.entityType.keyProperties;if(r.length>1)return!1;var n=r[0],a=e(this,n);return!!a&&void 0!==a.keyMap[t.values[0].toString()]},we.registerType(t,"KeyGenerator"),t}();se.KeyGenerator=ze;var Ue=function(){var e=function(e){me(e||{}).whereParam("name").isOptional().isString().whereParam("isCaseSensitive").isOptional().isBoolean().whereParam("usesSql92CompliantStringComparison").isBoolean().applyAll(this),this.name||(this.name=x()),we._storeObject(this,t._$typeName,this.name)},t=e.prototype;return t._$typeName="LocalQueryComparisonOptions",e.caseInsensitiveSQL=new e({name:"caseInsensitiveSQL",isCaseSensitive:!1,usesSql92CompliantStringComparison:!0}),e.defaultInstance=new e(e.caseInsensitiveSQL),t.setAsDefault=function(){return l(this,e)},e}();se.LocalQueryComparisonOptions=Ue;var Be=function(){var e=function(e){me(e||{}).whereParam("name").isOptional().isString().whereParam("serverPropertyNameToClient").isFunction().whereParam("clientPropertyNameToServer").isFunction().applyAll(this),this.name||(this.name=x()),we._storeObject(this,t._$typeName,this.name)},t=e.prototype;return t._$typeName="NamingConvention",e.none=new e({name:"noChange",serverPropertyNameToClient:function(e){return e},clientPropertyNameToServer:function(e){return e}}),e.camelCase=new e({name:"camelCase",serverPropertyNameToClient:function(e){return e.substr(0,1).toLowerCase()+e.substr(1);
},clientPropertyNameToServer:function(e){return e.substr(0,1).toUpperCase()+e.substr(1)}}),e.defaultInstance=new e(e.none),t.setAsDefault=function(){return l(this,e)},e}();se.NamingConvention=Be;var $e=function(){function e(e,n){var a=n.entityType;if(Array.isArray(e)){if(!n.isRHS)throw new Error("Array expressions are only permitted on the right hand side of a BinaryPredicate");return new y(e,n.dataType)}if(!R(e)){if(null!=e&&K(e)&&!e.toISOString){if(void 0===e.value)throw new Error("Unable to resolve an expression for: "+e+" on entityType: "+a.name);return e.isProperty?new f(e.value):new y(e.value,e.dataType||n.dataType,(!0))}return new y(e,n.dataType)}if(n.isRHS)return null==a||a.isAnonymous?new y(e,n.dataType):r(e,n);for(var i,o=/\([^()]*\)/,s=[],u=0;i=o.exec(e);){var p=i[0];s.push(p);var c=g+u++;e=e.replace(p,c)}var l=t(e,s,n);return l._validate(a,n.usesNameOnServer),l}function t(e,t,a){var i=e.split(g);return 1===i.length?r(i[0],a):n(e,i,t,a)}function r(e,t){e=e.trim();var r=e.substr(0,1),n=("'"===r||'"'===r)&&e.length>1&&e.substr(e.length-1)===r;if(n){var a=e.substr(1,e.length-2);return new y(a,t.dataType||xe.String)}var i=t.entityType;if(null==i||i.isAnonymous)return new f(e);var o=d.test(e);return o&&null!=i.getPropertiesOnPath(e,t.usesNameOnServer,!1)?new f(e):new y(e,t.dataType)}function n(e,r,n,a){try{var i=r[0].trim().toLowerCase(),o=n[r[1]].trim();"("===o.substr(0,1)&&(o=o.substr(1,o.length-2));var s=e.indexOf("'")>=0?m:v,u=o.match(s),c=p({},a);c.dataType=xe.Undefined,c.isFnArg=!0;var l=u.map(function(e){return t(e,n,c)});return new h(i,l)}catch(y){return null}}var a=function(){function e(e,t){var r=t[0];return r instanceof a?r=pe(t):Array.isArray(r)||(r=[a(pe(t))]),[e].concat(r)}function t(e,t,r){var n=t.toLowerCase();r.key=n,e[n]=r,r.aliases&&r.aliases.forEach(function(t){e[t.toLowerCase()]=r})}function r(e){var t={},a={};t[e[0]]=a;var i=e[1];return i=i.operator||i,3==e.length?a[i]=e[2]:a[i]=r(e.splice(2)),n(t)}function n(e){if(e instanceof a)return e;if("object"!=typeof e)throw new Error("Unable to convert to a Predicate: "+e);var t=Object.keys(e),r=t.map(function(t){return p(t,e[t])});return 1===r.length?r[0]:new u("and",r)}function p(e,t){if(u.prototype._resolveOp(e,!0))return new u(e,t);if(o.prototype._resolveOp(e,!0))return new o(e,t);if("object"!=typeof t||null==t||I(t))return new s("eq",e,t);if(ue(t,"value"))return new s("eq",e,t);if(Array.isArray(t))throw new Error("Unable to resolve predicate after the phrase: "+e);var r=e,n=Object.keys(t),a=n.map(function(e){if(c.prototype._resolveOp(e,!0))return new c(e,r,t[e]);if(s.prototype._resolveOp(e,!0))return new s(e,r,t[e]);if(ue(t[e],"value"))return new s("eq",r,t[e]);var n=G("Unable to resolve predicate after the phrase: '%1' for operator: '%2'  and value: '%3'",r,e,t[e]);throw new Error(n)});return 1===a.length?a[0]:new u("and",a)}var l=function(){if(0!==arguments.length){if(1===arguments.length){var e=arguments[0];return Array.isArray(e)?1===e.length?a(e[0]):r(e):e instanceof a?e:"string"==typeof e?new i(e):n(e)}return r(Array.prototype.slice.call(arguments,0))}},y=l.prototype;return l.create=l,l.and=function(){var e=new u("and",pe(arguments));return e.op&&e},l.or=function(){var e=new u("or",pe(arguments));return e.op&&e},l.not=function(e){return e.not()},l.extendBinaryPredicateFn=function(e,r){var n=w.binaryPredicate;for(var a in e||{}){var i=e[a];i.visitorFn=r,t(s.prototype.aliasMap,a,e[a])}w.isExtended||(w.binaryPredicate=function(e,t,r){var a=this.aliasMap[this.op.key].visitorFn;return a?a(e,t,r):n(e,t,r)},w.isExtended=!0)},y.and=function(){return new u("and",e(this,arguments))},y.or=function(){return new u("or",e(this,arguments))},y.not=function(){return new o("not",this)},y.toJSON=function(){return this.toJSONExt({entityType:this._entityType})},y.toJSONExt=function(e){return this.visit(e,S)},y.toFunction=function(e){return this.visit(e,w)},y.toString=function(){return JSON.stringify(this)},y.visit=function(e,t){if(U(e))e={entityType:null};else if(e instanceof Ve)e={entityType:e};else if(!ue(e,"entityType"))throw new Error("All visitor methods must be called with a context object containing at least an 'entityType' property");t?e.visitor=t:t=e.visitor;var r=t[this.visitorMethodName];if(null==r)throw new Error("Unable to locate method: "+this.visitorMethodName+" on visitor");var n=e.entityType;(this._validate&&null==n||this._entityType!==n)&&(this._validate(n,e.usesNameOnServer),this._entityType=n);Array.prototype.slice.call(arguments,1);return r.call(this,e)},y._initialize=function(e,r){this.visitorMethodName=e;var n=this.aliasMap={};for(var a in r||{})t(n,a,r[a])},y._resolveOp=function(e,t){e=e.operator||e;var r=this.aliasMap[e.toLowerCase()];if(!r&&!t)throw new Error("Unable to resolve operator: "+e);return r},l}(),i=function(){var e=function(e){this.value=e},t=e.prototype=new a;return t._initialize("passthruPredicate"),t._validate=M,e}(),o=function(){var e=function(e,t){this.op=this._resolveOp(e),this.pred=a(t)},t=e.prototype=new a;return t._initialize("unaryPredicate",{not:{aliases:["!","~"]}}),t._validate=function(e,t){this.pred._validate(e,t)},e}(),s=function(){var t=function(e,t,r){this.op=this._resolveOp(e),this.expr1Source=t,this.expr2Source=r},r=t.prototype=new a;return r._initialize("binaryPredicate",{eq:{aliases:["==","equals"]},ne:{aliases:["!=","~=","notequals"]},lt:{aliases:["<","lessthan"]},le:{aliases:["<=","lessthanorequal"]},gt:{aliases:[">","greaterthan"]},ge:{aliases:[">=","greaterthanorequal"]},startswith:{isFunction:!0},endswith:{isFunction:!0},contains:{aliases:["substringof"],isFunction:!0},"in":{}}),r._validate=function(t,r){var n={entityType:t,usesNameOnServer:r};if(this.expr1=e(this.expr1Source,n),null==this.expr1)throw new Error("Unable to validate 1st expression: "+this.expr1Source);if(this.expr1 instanceof y)throw new Error("The left hand side of a binary predicate cannot be a literal expression, it must be a valid property or functional predicate expression: "+this.expr1Source);if("in"==this.op.key&&!Array.isArray(this.expr2Source))throw new Error("The 'in' operator requires that its right hand argument be an array");var a=p(n,{isRHS:!0,dataType:this.expr1.dataType});if(this.expr2=e(this.expr2Source,a),null==this.expr2)throw new Error("Unable to validate 2nd expression: "+this.expr2Source);null==this.expr1.dataType&&(this.expr1.dataType=this.expr2.dataType)},t}(),u=function(){var e=function(e,t){if(this.op=this._resolveOp(e),1==t.length&&Array.isArray(t[0])&&(t=t[0]),this.preds=t.filter(function(e){return null!=e}).map(function(e){return a(e)}),0==this.preds.length&&(this.op=null),1==this.preds.length)return this.preds[0]},t=e.prototype=new a;return t._initialize("andOrPredicate",{and:{aliases:["&&"]},or:{aliases:["||"]}}),t._validate=function(e,t){this.preds.every(function(r){r._validate(e,t)})},e}(),c=function(){var t=function(e,t,r){this.op=this._resolveOp(e),this.exprSource=t,this.pred=a(r)},r=t.prototype=new a;return r._initialize("anyAllPredicate",{any:{aliases:["some"]},all:{aliases:["every"]}}),r._validate=function(t,r){this.expr=e(this.exprSource,{entityType:t,usesNameOnServer:r}),(null==t||t.isAnonymous)&&(this.expr.dataType=null),this.pred._validate(this.expr.dataType,r)},t}(),l=function(e){this.visitorMethodName=e,this.visit=a.prototype.visit,this._validate=M},y=function(){function e(e){if(null==e)return e;if(xe.contains(e))return e;if(R(e)){var t=xe.fromName(e);if(t)return t;throw new Error("Unable to resolve a dataType named: "+e)}throw new Error("The dataType parameter passed into this literal expression is not a 'DataType'"+e)}var t=function(t,r,n){r=e(r),r=r||xe.fromValue(t),r&&r.parse?Array.isArray(t)?this.value=t.map(function(e){return r.parse(e,typeof e)}):this.value=r.parse(t,typeof t):this.value=t,this.dataType=r,this.hasExplicitDataType=n},r=t.prototype=new l("litExpr");return r.toString=function(){return" LitExpr - value: "+this.value.toString()+" dataType: "+this.dataType.toString()},t}(),f=function(){var e=function(e){this.propertyPath=e},t=e.prototype=new l("propExpr");return t.toString=function(){return" PropExpr - "+this.propertyPath},t._validate=function(e,t){if(null!=e&&!e.isAnonymous){var r=e.getPropertiesOnPath(this.propertyPath,t,!1);if(!r){var n=G("Unable to resolve propertyPath.  EntityType: '%1'   PropertyPath: '%2'",e.name,this.propertyPath);throw new Error(n)}var a=r[r.length-1];a.isDataProperty?this.dataType=a.dataType:this.dataType=a.entityType}},e}(),h=function(){var e=function(e,t){this.fnName=e,this.exprs=t;var n=r[e];if(null==n)throw new Error("Unknown function: "+e);this.localFn=n.fn,this.dataType=n.dataType},t=e.prototype=new l("fnExpr");t.toString=function(){var e=this.exprs.map(function(e){e.toString()}).toString();return"FnExpr - "+this.fnName+"("+e+")"},t._validate=function(e,t){this.exprs.forEach(function(r){r._validate(e,t)})};var r=e.funcMap={toupper:{fn:function(e){return e.toUpperCase()},dataType:xe.String},tolower:{fn:function(e){return e.toLowerCase()},dataType:xe.String},substring:{fn:function(e,t,r){return e.substring(t,r)},dataType:xe.String},substringof:{fn:function(e,t){return t.indexOf(e)>=0},dataType:xe.Boolean},length:{fn:function(e){return e.length},dataType:xe.Int32},trim:{fn:function(e){return e.trim()},dataType:xe.String},concat:{fn:function(e,t){return e.concat(t)},dataType:xe.String},replace:{fn:function(e,t,r){return e.replace(t,r)},dataType:xe.String},startswith:{fn:function(e,t){return $(e,t)},dataType:xe.Boolean},endswith:{fn:function(e,t){return L(e,t)},dataType:xe.Boolean},indexof:{fn:function(e,t){return e.indexOf(t)},dataType:xe.Int32},round:{fn:function(e){return Math.round(e)},dataType:xe.Int32},ceiling:{fn:function(e){return Math.ceil(e)},dataType:xe.Int32},floor:{fn:function(e){return Math.floor(e)},dataType:xe.Int32},second:{fn:function(e){return e.getSeconds()},dataType:xe.Int32},minute:{fn:function(e){return e.getMinutes()},dataType:xe.Int32},day:{fn:function(e){return e.getDate()},dataType:xe.Int32},month:{fn:function(e){return e.getMonth()+1},dataType:xe.Int32},year:{fn:function(e){return e.getFullYear()},dataType:xe.Int32}};return e}(),d=/^[a-z_][\w.$]*$/i,m=/('[^']*'|[^,]+)/g,v=/("[^"]*"|[^,]+)/g,g=String.fromCharCode(191),w=function(){function e(e){switch(e.key){case"any":return function(e,t){return e.some(function(e){return t(e)})};case"all":return function(e,t){return e.every(function(e){return t(e)})};default:throw new Error("Unknown operator: "+e.key)}}function t(e,t,o){var s,u=e.op,p=xe.getComparableFn(t);switch(u.key){case"eq":s=function(e,t){return e&&"string"==typeof e?r(e,t,o):p(e)==p(t)};break;case"ne":s=function(e,t){return e&&"string"==typeof e?!r(e,t,o):p(e)!=p(t)};break;case"gt":s=function(e,t){return p(e)>p(t)};break;case"ge":s=function(e,t){return p(e)>=p(t)};break;case"lt":s=function(e,t){return p(e)<p(t)};break;case"le":s=function(e,t){return p(e)<=p(t)};break;case"startswith":s=function(e,t){return n(e,t,o)};break;case"endswith":s=function(e,t){return a(e,t,o)};break;case"contains":s=function(e,t){return i(e,t,o)};break;case"in":s=function(e,t){return e=p(e),t=t.map(function(e){return p(e)}),t.indexOf(e)>=0};break;default:return null}return s}function r(e,t,r){return null!=t&&("string"!=typeof t&&(t=t.toString()),r.usesSql92CompliantStringComparison&&(e=(e||"").trim(),t=(t||"").trim()),r.isCaseSensitive||(e=(e||"").toLowerCase(),t=(t||"").toLowerCase()),e===t)}function n(e,t,r){return r.isCaseSensitive||(e=(e||"").toLowerCase(),t=(t||"").toLowerCase()),$(e,t)}function a(e,t,r){return r.isCaseSensitive||(e=(e||"").toLowerCase(),t=(t||"").toLowerCase()),L(e,t)}function i(e,t,r){return r.isCaseSensitive||(e=(e||"").toLowerCase(),t=(t||"").toLowerCase()),e.indexOf(t)>=0}var o={passthruPredicate:function(){throw new Error("Cannot execute an PassthruPredicate expression against the local cache: "+this.value)},unaryPredicate:function(e){var t=this.pred.visit(e);switch(this.op.key){case"not":return function(e){return!t(e)};default:throw new Error("Invalid unary operator:"+this.op.key)}},binaryPredicate:function(e){var r=this.expr1.visit(e),n=this.expr2.visit(e),a=this.expr1.dataType||this.expr2.dataType,i=e.entityType.metadataStore.localQueryComparisonOptions,o=t(this,a,i);if(null==o)throw new Error("Invalid binaryPredicate operator:"+this.op.key);return function(e){return o(r(e),n(e))}},andOrPredicate:function(e){var t=this.preds.map(function(t){return t.visit(e)});switch(this.op.key){case"and":return function(e){var r=t.reduce(function(t,r){return t&&r(e)},!0);return r};case"or":return function(e){var r=t.reduce(function(t,r){return t||r(e)},!1);return r};default:throw new Error("Invalid boolean operator:"+op.key)}},anyAllPredicate:function(t){var r=this.expr.visit(t),n=p({},t);n.entityType=this.expr.dataType;var a=this.pred.visit(n),i=e(this.op);return function(e){return i(r(e),a)}},litExpr:function(){var e=this.value;return function(t){return e}},propExpr:function(){var e=this.propertyPath,t=e.split(".");return 1===t.length?function(t){return t.getProperty(e)}:function(e){return oe(e,t)}},fnExpr:function(e){var t=this.exprs.map(function(t){return t.visit(e)}),r=this;return function(e){var n=t.map(function(t){var r=t(e);return r}),a=r.localFn.apply(null,n);return a}}};return o}(),S=function(){function e(t,r){var n=Object.keys(r).every(function(n){if(t.hasOwnProperty(n)){if("object"!=typeof r[n])return!1;if(null==e(t[n],r[n]))return!1}else t[n]=r[n];return!0});return n?t:null}var t={passthruPredicate:function(){return this.value},unaryPredicate:function(e){var t=this.pred.visit(e),r={};return r[this.op.key]=t,r},binaryPredicate:function(e){var t=this.expr1.visit(e),r=this.expr2.visit(e),n={};if(this.expr2 instanceof f&&(r={value:r,isProperty:!0}),"eq"===this.op.key)n[t]=r;else{var a={};n[t]=a,a[this.op.key]=r}return n},andOrPredicate:function(t){var r=this.preds.map(function(e){return e.visit(t)});if(!r||!r.length)return{};var n;return"and"!==this.op.key||2!==r.length||r.some(R)||(n=r.reduce(e)),null==n&&(n={},n[this.op.key]=r),n},anyAllPredicate:function(e){var t=this.expr.visit(e),r=p({},e);r.entityType=this.expr.dataType;var n=this.pred.visit(r),a={},i={};return i[this.op.key]=n,a[t]=i,a},litExpr:function(e){return this.hasExplicitDataType||e.useExplicitDataType?{value:this.value,dataType:this.dataType.name}:this.value},propExpr:function(e){return e.toNameOnServer?e.entityType.clientPropertyPathToServer(this.propertyPath):this.propertyPath},fnExpr:function(e){var t=this.exprs.map(function(t){return t.visit(e)});return this.fnName+"("+t.join(",")+")"}};return t}();return a}();se.Predicate=$e;var Le=function(){function e(e,t){return y(t,{"resourceName,from":null,"resultEntityType,toType":null,"wherePredicate,where":function(e){return e?new $e(e):void 0},"orderByClause,orderBy":function(e){return e?new Je(e):void 0},"selectClause,select":function(e){return e?new Qe(e):void 0},"expandClause,expand":function(e){return e?new He(e):void 0},"skipCount,skip":null,"takeCount,take":null,parameters:function(e){return U(e)?void 0:e},"inlineCountEnabled,inlineCount":!1,"noTrackingEnabled,noTracking":!1,queryOptions:function(e){return e?Ye.fromJSON(e):void 0}},e),e}function r(e,t,r){if(t&&e[t]===r)return e;var n=p(new Le,e,["resourceName","fromEntityType","wherePredicate","orderByClause","selectClause","skipCount","takeCount","expandClause","inlineCountEnabled","noTrackingEnabled","usesNameOnServer","queryOptions","entityManager","dataService","resultEntityType"]);return n.parameters=p({},e.parameters),t&&(n[t]=r),n}function n(e,r,a,i){var o=a._$typeName||a.parentEnum&&a.parentEnum.name,s=o&&o.substr(0,1).toLowerCase()+o.substr(1);if(i&&s!=i)throw new Error("Invalid value for property: "+i);if(s){var u=r[s];if(void 0===u)throw new Error("Invalid config property: "+s);null===u?e[s]=a:u(e,a)}else t(a,function(t,a){n(e,r,a,t)})}function a(e){return he(e,"propertyPaths").isOptional().isString().or().isArray().isString().check(),"string"==typeof e&&(e=e.split(",")),e=e.map(function(e){return e.trim()})}function i(e){var t=e.entityType,r=t.keyProperties.map(function(t){return $e.create(t.name,Ge.Equals,e.getProperty(t.name))}),n=$e.and(r);return n}function o(e){var t=e.entityType.keyProperties,r=T(t,e.values,function(e,t){return $e.create(e.name,Ge.Equals,t)}),n=$e.and(r);return n}function s(e,t){if(t.isScalar){if(0===t.foreignKeyNames.length)return null;var r=t.foreignKeyNames.map(function(t){return e.getProperty(t)}),n=new Ae(t.entityType,r);return o(n)}var a=t.getInverse(),i=a?a.foreignKeyNames:t.invForeignKeyNames;if(0===i.length)return null;var s=e.entityAspect.getKey().values,u=T(i,s,function(e,t){return $e.create(e,Ge.Equals,t)});return $e.and(u)}var u=function(t){return null==t||R(t)?(this.resourceName=t,this.fromEntityType=null,this.wherePredicate=null,this.orderByClause=null,this.selectClause=null,this.skipCount=null,this.takeCount=null,this.expandClause=null,this.parameters={},this.inlineCountEnabled=!1,this.noTrackingEnabled=!1,void(this.entityManager=null)):e(this,t)},c=u.prototype;return c._$typeName="EntityQuery",c.from=function(e){return he(e,"resourceName").isString().check(),r(this,"resourceName",e)},u.from=function(e){return he(e,"resourceName").isString().check(),new Le(e)},c.toType=function(e){return he(e,"entityType").isString().or().isInstanceOf(Ve).check(),r(this,"resultEntityType",e)},c.where=function(e){return null!=e&&(e=$e.create(pe(arguments)),this.fromEntityType&&e._validate(this.fromEntityType),this.wherePredicate&&(e=this.wherePredicate.and(e))),r(this,"wherePredicate",e)},c.orderBy=function(e,t){var n=null==e?null:new Je(a(e),t);return this.orderByClause&&n&&(n=new Je([this.orderByClause,n])),r(this,"orderByClause",n)},c.orderByDesc=function(e){return this.orderBy(e,!0)},c.select=function(e){var t=null==e?null:new Qe(a(e));return r(this,"selectClause",t)},c.skip=function(e){return he(e,"count").isOptional().isNumber().check(),r(this,"skipCount",null==e?null:e)},c.top=function(e){return this.take(e)},c.take=function(e){return he(e,"count").isOptional().isNumber().check(),r(this,"takeCount",null==e?null:e)},c.expand=function(e){var t=null==e?null:new He(a(e));return r(this,"expandClause",t)},c.withParameters=function(e){return he(e,"parameters").isObject().check(),r(this,"parameters",e)},c.inlineCount=function(e){return he(e,"enabled").isBoolean().isOptional().check(),e=void 0===e||!!e,r(this,"inlineCountEnabled",e)},c.useNameOnServer=function(e){return he(e,"usesNameOnServer").isBoolean().isOptional().check(),e=void 0===e||!!e,r(this,"usesNameOnServer",e)},c.noTracking=function(e){return he(e,"enabled").isBoolean().isOptional().check(),e=void 0===e||!!e,r(this,"noTrackingEnabled",e)},c.using=function(e){if(!e)return this;var t=r(this);return n(t,{entityManager:null,dataService:null,queryOptions:null,fetchStrategy:function(e,t){e.queryOptions=(e.queryOptions||new Ye).using(t)},mergeStrategy:function(e,t){e.queryOptions=(e.queryOptions||new Ye).using(t)},jsonResultsAdapter:function(e,t){e.dataService=(e.dataService||new Fe).using({jsonResultsAdapter:t})}},e),t},c.execute=function(e,t){if(!this.entityManager)throw new Error("An EntityQuery must have its EntityManager property set before calling 'execute'");return this.entityManager.executeQuery(this,e,t)},c.executeLocally=function(){if(!this.entityManager)throw new Error("An EntityQuery must have its EntityManager property set before calling 'executeLocally'");return this.entityManager.executeQueryLocally(this)},c.toJSON=function(){return this.toJSONExt()},c.toJSONExt=function(e){e=e||{},e.entityType=e.entityType||this.fromEntityType,e.propertyPathFn=e.toNameOnServer?e.entityType.clientPropertyPathToServer.bind(e.entityType):k;var t=function(t){return t?t.toJSONExt(e):void 0};return y(this,{"from,resourceName":null,"toType,resultEntityType":function(e){return e?R(e)?e:e.name:void 0},"where,wherePredicate":t,"orderBy,orderByClause":t,"select,selectClause":t,"expand,expandClause":t,"skip,skipCount":null,"take,takeCount":null,parameters:function(e){return U(e)?void 0:e},"inlineCount,inlineCountEnabled":!1,"noTracking,noTrackingEnabled":!1,queryOptions:null})},u.fromEntities=function(e){he(e,"entities").isEntity().or().isNonEmptyArray().isEntity().check(),Array.isArray(e)||(e=pe(arguments));var t=e[0],r=t.entityType;if(e.some(function(e){return e.entityType!==r}))throw new Error("All 'fromEntities' must be the same type; at least one is not of type "+r.name);var n=new Le(r.defaultResourceName),a=e.map(function(e){return i(e)}),o=$e.or(a);n=n.where(o);var s=t.entityAspect.entityManager;return s&&(n=n.using(s)),n},u.fromEntityKey=function(e){he(e,"entityKey").isInstanceOf(Ae).check();var t=new Le(e.entityType.defaultResourceName),r=o(e);return t=t.where(r).toType(e.entityType)},u.fromEntityNavigation=function(e,t){he(e,"entity").isEntity().check();var r=e.entityType._checkNavProperty(t),n=new Le(r.entityType.defaultResourceName),a=s(e,r);n=n.where(a);var i=e.entityAspect.entityManager;return i?n.using(i):n},c._getFromEntityType=function(e,t){var r=this.fromEntityType;if(r)return r;var n=this.resourceName;if(!n)throw new Error("There is no resourceName for this query");if(e.isEmpty()){if(t)throw new Error("There is no metadata available for this query. Are you querying the local cache before you've fetched metadata?");return null}var a=e.getEntityTypeNameForResourceName(n);if(r=a?e._getEntityType(a):this._getToEntityType(e,!0),!r){if(t)throw new Error(G("Cannot find an entityType for resourceName: '%1'.  Consider adding an 'EntityQuery.toType' call to your query or calling the MetadataStore.setEntityTypeForResourceName method to register an entityType for this resourceName.",n));return null}return this.fromEntityType=r,r},c._getToEntityType=function(e,t){return this.resultEntityType instanceof Ve?this.resultEntityType:this.resultEntityType?(this.resultEntityType=e._getEntityType(this.resultEntityType,!1),this.resultEntityType):t?null:!this.selectClause&&this._getFromEntityType(e,!1)},c._toUri=function(e){var t=Fe.resolve([e.dataService]);return t.uriBuilder.buildUri(this,e.metadataStore)},u}(),Ge=function(){var e=new ve("FilterQueryOp");return e.Equals=e.addSymbol({operator:"eq"}),e.NotEquals=e.addSymbol({operator:"ne"}),e.GreaterThan=e.addSymbol({operator:"gt"}),e.LessThan=e.addSymbol({operator:"lt"}),e.GreaterThanOrEqual=e.addSymbol({operator:"ge"}),e.LessThanOrEqual=e.addSymbol({operator:"le"}),e.Contains=e.addSymbol({operator:"contains"}),e.StartsWith=e.addSymbol({operator:"startswith"}),e.EndsWith=e.addSymbol({operator:"endswith"}),e.Any=e.addSymbol({operator:"any"}),e.All=e.addSymbol({operator:"all"}),e.In=e.addSymbol({operator:"in"}),e.IsTypeOf=e.addSymbol({operator:"isof"}),e.resolveSymbols(),e}(),Je=(function(){var e=new ve("BooleanQueryOp");return e.And=e.addSymbol({operator:"and"}),e.Or=e.addSymbol({operator:"or"}),e.Not=e.addSymbol({operator:"not"}),e.resolveSymbols(),e}(),function(){var e=function(e,t){if(e.length>1){if(e[0]instanceof Je)return void(this.items=Array.prototype.concat.apply(e[0].items,e.slice(1).map(s("items"))));var n=e.map(function(e){return new r(e,t)})}else var n=[new r(e[0],t)];this.items=n},t=e.prototype;t.validate=function(e){null==e||e.isAnonymous||this.items.forEach(function(t){t.validate(e)})},t.getComparer=function(e){var t=this.items.map(function(t){return t.getComparer(e)});return function(e,r){for(var n=0;n<t.length;n++){var a=t[n](e,r);if(0!==a)return a}return 0}},t.toJSONExt=function(e){return this.items.map(function(t){return e.propertyPathFn(t.propertyPath)+(t.isDesc?" desc":"")})};var r=function(e,t){if("string"!=typeof e)throw new Error("propertyPath is not a string");e=e.trim();var r=e.split(" ");if(r.length>1&&t!==!0&&t!==!1&&(t=$(r[1].toLowerCase(),"desc"),!t)){var n=$(r[1].toLowerCase(),"asc");if(!n)throw new Error("the second word in the propertyPath must begin with 'desc' or 'asc'")}this.propertyPath=r[0],this.isDesc=t},n=r.prototype;return n.validate=function(e){null==e||e.isAnonymous||(this.lastProperty=e.getProperty(this.propertyPath,!0))},n.getComparer=function(e){if(this.lastProperty||this.validate(e),this.lastProperty)var t=this.lastProperty.dataType,r=this.lastProperty.parentType.metadataStore.localQueryComparisonOptions.isCaseSensitive;var n=this.propertyPath,a=this.isDesc;return function(e,i){var o=oe(e,n),s=oe(i,n),u=t||o&&xe.fromValue(o)||xe.fromValue(s);if(u===xe.String)r?(o=o||"",s=s||""):(o=(o||"").toLowerCase(),s=(s||"").toLowerCase());else{var p=xe.getComparableFn(u);o=p(o),s=p(s)}return o===s?0:o>s||void 0===s?a?-1:1:a?1:-1}},e}()),Qe=function(){var e=function(e){this.propertyPaths=e,this._pathNames=e.map(function(e){return e.replace(".","_")})},t=e.prototype;return t.validate=function(e){null==e||e.isAnonymous||this.propertyPaths.forEach(function(t){e.getProperty(t,!0)})},t.toFunction=function(){var e=this;return function(t){var r={};return e.propertyPaths.forEach(function(n,a){r[e._pathNames[a]]=oe(t,n)}),r}},t.toJSONExt=function(e){return this.propertyPaths.map(function(t){return e.propertyPathFn(t)})},e}(),He=function(){var e=function(e){this.propertyPaths=e},t=e.prototype;return t.toJSONExt=function(e){return this.propertyPaths.map(function(t){return e.propertyPathFn(t)})},e}();se.FilterQueryOp=Ge,se.EntityQuery=Le,se.OrderByClause=Je;var Ze=function(){var e=new ve("MergeStrategy");return e.PreserveChanges=e.addSymbol(),e.OverwriteChanges=e.addSymbol(),e.SkipMerge=e.addSymbol(),e.Disallowed=e.addSymbol(),e.resolveSymbols(),e}(),We=function(){var e=new ve("FetchStrategy");return e.FromServer=e.addSymbol(),e.FromLocalCache=e.addSymbol(),e.resolveSymbols(),e}(),Ye=function(){function e(e,t){return t&&me(t).whereParam("fetchStrategy").isEnumOf(We).isOptional().whereParam("mergeStrategy").isEnumOf(Ze).isOptional().whereParam("includeDeleted").isBoolean().isOptional().applyAll(e),e}var t=function(t){e(this,t)},r=t.prototype;return r._$typeName="QueryOptions",t.resolve=function(e){return new Ye(d(e,["fetchStrategy","mergeStrategy","includeDeleted"]))},t.defaultInstance=new t({fetchStrategy:We.FromServer,mergeStrategy:Ze.PreserveChanges,includeDeleted:!1}),r.using=function(t){if(!t)return this;var r=new Ye(this);return Ze.contains(t)?t={mergeStrategy:t}:We.contains(t)&&(t={fetchStrategy:t}),e(r,t)},r.setAsDefault=function(){return l(this,t)},r.toJSON=function(){return y(this,{fetchStrategy:null,mergeStrategy:null,includeDeleted:!1})},t.fromJSON=function(e){return new Ye({fetchStrategy:We.fromName(e.fetchStrategy),mergeStrategy:Ze.fromName(e.mergeStrategy),includeDeleted:e.includeDeleted===!0})},t}();se.QueryOptions=Ye,se.FetchStrategy=We,se.MergeStrategy=Ze;var Xe=function(){function e(e){if(e){if(1===e.length){var t=e[0];return function(e){return!!e&&e.entityAspect.entityState===t}}return function(t){return!!t&&-1!==e.indexOf(t.entityAspect.entityState)}}return function(e){return!!e}}var t=function(e,t){this.entityManager=e,this.entityType=t,this.entityType.isFrozen=!0,this._indexMap={},this._entities=[],this._emptyIndexes=[]},r=t.prototype;return r.attachEntity=function(e,t,r){var n=e.entityAspect;n._initialized||this.entityType._initializeInstance(e),delete n._initialized;var a=n.getKey()._keyInGroup,i=this._indexMap[a];if(i>=0){var o=this._entities[i],s=o.entityAspect.entityState,u=s.isUnchanged();if(o===e)n.entityState=t;else{if(r===Ze.Disallowed)throw new Error("A MergeStrategy of 'Disallowed' does not allow you to attach an entity when an entity with the same key is already attached: "+n.getKey());if(r===Ze.OverwriteChanges||r===Ze.PreserveChanges&&u){var p=this.entityManager.helper.unwrapInstance(e);this.entityType._updateTargetFromRaw(o,p,Re.getRawValueFromServer),o.entityAspect.setEntityState(t)}}return o}return 0===this._emptyIndexes.length?i=this._entities.push(e)-1:(i=this._emptyIndexes.pop(),this._entities[i]=e),this._indexMap[a]=i,n.entityState=t,n.entityGroup=this,n.entityManager=this.entityManager,e},r.detachEntity=function(e){var t=e.entityAspect,r=t.getKey()._keyInGroup,n=this._indexMap[r];if(void 0===n)throw new Error("internal error - entity cannot be found in group");return delete this._indexMap[r],this._emptyIndexes.push(n),this._entities[n]=null,e},r.findEntityByKey=function(e){var t;t=e instanceof Ae?e._keyInGroup:Ae.createKeyString(e);var r=this._indexMap[t];return void 0!==r?this._entities[r]:null},r.hasChanges=function(){for(var e=this._entities,t=Ce.Unchanged,r=0,n=e.length;r<n;r++){var a=e[r];if(a&&a.entityAspect.entityState!==t)return!0}return!1},r.getChanges=function(){for(var e=this._entities,t=Ce.Unchanged,r=[],n=0,a=e.length;n<a;n++){var i=e[n];i&&i.entityAspect.entityState!==t&&r.push(i)}return r},r.getEntities=function(t){var r=e(t);return this._entities.filter(r)},r._checkOperation=function(e){return this._entities.forEach(function(t){t&&t.entityAspect._checkOperation(e)}),this},r._clear=function(){this._entities.forEach(function(e){null!=e&&e.entityAspect._detach()}),this._entities=null,this._indexMap=null,this._emptyIndexes=null},r._updateFkVal=function(e,t,r){var n=e.name;this._entities.forEach(function(e){null!=e&&e.getProperty(n)==t&&e.setProperty(n,r)})},r._fixupKey=function(e,t){var r=this._indexMap[e];if(void 0===r)throw new Error("Internal Error in key fixup - unable to locate entity");var n=this._entities[r],a=n.entityType.keyProperties[0].name;n.setProperty(a,t),delete n.entityAspect.hasTempKey,delete this._indexMap[e],this._indexMap[t]=r},r._replaceKey=function(e,t){var r=this._indexMap[e._keyInGroup];delete this._indexMap[e._keyInGroup],this._indexMap[t._keyInGroup]=r},t}(),et=function(){function e(e,t,r){var n=r?Ye.defaultInstance:e.queryOptions,a=r?rt.defaultInstance:e.saveOptions,i=r?be.defaultInstance:e.validationOptions,o=me(t).whereParam("serviceName").isOptional().isString().whereParam("dataService").isOptional().isInstanceOf(Fe).whereParam("queryOptions").isInstanceOf(Ye).isOptional().withDefault(n).whereParam("saveOptions").isInstanceOf(rt).isOptional().withDefault(a).whereParam("validationOptions").isInstanceOf(be).isOptional().withDefault(i).whereParam("keyGeneratorCtor").isFunction().isOptional();r&&(o=o.whereParam("metadataStore").isInstanceOf(De).isOptional().withDefault(new De)),o.applyAll(e),c(e.queryOptions,n),c(e.saveOptions,a),c(e.validationOptions,i),t.serviceName&&(e.dataService=new Fe({serviceName:e.serviceName})),e.serviceName=e.dataService&&e.dataService.serviceName,e.keyGeneratorCtor=e.keyGeneratorCtor||ze,(r||t.keyGeneratorCtor)&&(e.keyGenerator=new e.keyGeneratorCtor)}function n(e,t){he(t,"query").isInstanceOf(Le).check();var r=e.metadataStore,n=t._getFromEntityType(r,!0),a=L(e,n),i=t.wherePredicate&&t.wherePredicate.toFunction({entityType:n}),o=Ye.resolve([t.queryOptions,e.queryOptions,Ye.defaultInstance]),s=o.includeDeleted===!0,u=function(e){return e&&(s||!e.entityAspect.entityState.isDeleted())&&(!i||i(e))},p=[];a.forEach(function(e){var t=e._entities.filter(u);t.length&&(p=p.length?p.concat(t):t)});var c=t.orderByClause&&t.orderByClause.getComparer(n);if(c&&p.sort(c),t.inlineCountEnabled)var l=p.length;var y=t.skipCount;y&&(p=p.slice(y));var f=t.takeCount;f&&(p=p.slice(0,f));var h=t.selectClause;if(h){var d=h.toFunction();p=p.map(d)}return{results:p,inlineCount:l}}function a(e){e.forEach(function(e){var r=[],n=e.entityAspect;t(n._validationErrors,function(e,t){t.isServerError&&r.push(e)}),0!==r.length&&n._processValidationOpAndPublish(function(){r.forEach(function(e){n._removeValidationError(e)})})})}function i(e){var r=[];return e.forEach(function(e){t(e.entityAspect._validationErrors,function(t,n){var a=p({entity:e,errorName:n.validator.name},n,["errorMessage","propertyName","isServerError"]);r.push(a)})}),r}function o(e,t){var r=t.entityErrors;if(r){var n=e.entityManager,a=n.metadataStore;t.entityErrors=r.map(function(e){var t=null;if(e.keyValues){var r=a._getEntityType(e.entityTypeName),i=new Ae(r,e.keyValues);t=n.findEntityByKey(i)}if(t){var o=e.propertyName?{propertyName:e.propertyName,property:r.getProperty(e.propertyName)}:{},s=Pe.getKey(e.errorName||e.errorMessage,e.propertyName),u=new Pe(null,o,e.errorMessage,s);
u.isServerError=!0,t.entityAspect.addValidationError(u)}var c=p({entity:t,isServerError:!0},e,["errorName","errorMessage","propertyName"]);return c})}}function s(e,t){var r,n=d(e,t),a=n.entityKey,i=0!==n.remainingArgs.length&&!!n.remainingArgs[0],o=!1;return i&&(r=e.getEntityByKey(a),o=!!r,o&&!e.queryOptions.includeDeleted&&r.entityAspect.entityState.isDeleted()&&(r=null,o=e.queryOptions.mergeStrategy!==Ze.OverwriteChanges)),o?ke.resolve({entity:r,entityKey:a,fromCache:!0}):Le.fromEntityKey(a).using(e).execute().then(function(e){return r=0===e.results.length?null:e.results[0],ke.resolve({entity:r,entityKey:a,fromCache:!1})})}function l(e,t){return he(t,"entityTypes").isString().isOptional().or().isNonEmptyArray().isString().or().isInstanceOf(Ve).or().isNonEmptyArray().isInstanceOf(Ve).check(),"string"==typeof t?t=e.metadataStore._getEntityType(t,!1):Array.isArray(t)&&"string"==typeof t[0]&&(t=t.map(function(t){return e.metadataStore._getEntityType(t,!1)})),t}function y(e,t){var r,n=D(e,t);return n.forEach(function(e){if(e){var t=e.getChanges();r?r.push.apply(r,t):r=t}}),r||[]}function f(e,t,r){var n,a=D(e,t);return a.forEach(function(e){if(e){var t=e.getEntities(r);n?n.push.apply(n,t):n=t}}),n||[]}function d(e,t){try{if(t[0]instanceof Ae)return{entityKey:t[0],remainingArgs:pe(t,1)};if(t.length>=2){var r="string"==typeof t[0]?e.metadataStore._getEntityType(t[0],!1):t[0];return{entityKey:new Ae(r,t[1]),remainingArgs:pe(t,2)}}}catch(n){}throw new Error("Must supply an EntityKey OR an EntityType name or EntityType followed by a key value or an array of key values.")}function w(e,t){e.forEach(function(e){e.entityAspect.isBeingSaved=t})}function S(e,r){var n,a=r&&r[0];if(a)if(n={},a.entityType)r.forEach(function(e){if(e.entityAspect.entityState==Ce.Detached)throw new Error("Unable to export an entity with an EntityState of 'Detached'");var t=n[e.entityType.name];t||(t={},t.entityType=e.entityType,t._entities=[],n[e.entityType.name]=t),t._entities.push(e)});else{var i=l(e,r);i.forEach(function(t){var r=e._entityGroupMap[t.name];r&&r._entities.length&&(n[t.name]=r)})}else n=r&&0===r.length?{}:e._entityGroupMap;var o=[],s={};return t(n,function(e,t){s[e]=P(t,o)}),{entityGroupMap:s,tempKeys:o}}function P(e,t){var r={},n=e.entityType,a=n.dataProperties,i=W(n),o=[];return e._entities.forEach(function(e){if(e){var r=_(e,a,i,t);o.push(r)}}),r.entities=o,r}function _(e,t,r,n){var a={};t.forEach(function(t){var n=t.name,i=e.getProperty(n);if(null!=i||null!=t.defaultValue){if(i&&t.isComplexProperty){var o=t.dataType.dataProperties;i=v(i,function(e){return _(e,o,r)})}else i=r?r(t,i):i,t.isUnmapped&&(i=h(i));void 0!==i&&(a[n]=i)}});var i,o;if(e.entityAspect){i=e.entityAspect;var s=i.entityState;o={tempNavPropNames:N(i,n),entityState:s.name},i.extraMetadata&&(o.extraMetadata=i.extraMetadata),(s.isModified()||s.isDeleted())&&(o.originalValuesMap=i.originalValues),a.entityAspect=o}else i=e.complexAspect,o={},i.originalValues&&!U(i.originalValues)&&(o.originalValuesMap=i.originalValues),a.complexAspect=o;return a}function N(e,t){var r=e.entity;e.hasTempKey&&t.push(e.getKey().toJSON());var n;return r.entityType.navigationProperties.forEach(function(e){if(e.relatedDataProperties){var t=r.getProperty(e.name);t&&t.entityAspect.hasTempKey&&(n=n||[],n.push(e.name))}}),n}function C(e,t,r){var n=r.tempKeyMap,a=e.entityType,i=r.mergeStrategy,o=null,s=e.entityManager,u=s.entityChanged,p=[],c=Re.getRawValueFromClient;return t.entities.forEach(function(t){var r=t.entityAspect,l=a.getEntityKeyFromRawEntity(t,c),y=Ce.fromName(r.entityState);if(!y||y==Ce.Detached)throw new Error("Only entities with a non detached entity state may be imported.");var f=y.isAdded()&&x(n,l);if(o=f?null:e.findEntityByKey(l))if(i===Ze.SkipMerge);else{if(i===Ze.Disallowed)throw new Error("A MergeStrategy of 'Disallowed' prevents "+l.toString()+" from being merged");var h=o.entityAspect.entityState,d=h.isUnchanged();(i===Ze.OverwriteChanges||d)&&(a._updateTargetFromRaw(o,t,c),o.entityAspect.setEntityState(y),u.publish({entityAction:_e.MergeOnImport,entity:o}))}else o=a._createInstanceCore(),a._updateTargetFromRaw(o,t,c),f&&(o.entityAspect.hasTempKey=!0,o.setProperty(a.keyProperties[0].name,f.values[0]),r.tempNavPropNames&&r.tempNavPropNames.forEach(function(e){var t=a.getNavigationProperty(e),r=t.relatedDataProperties[0].name,i=o.getProperty(r),s=new Ae(t.entityType,[i]),u=x(n,s);o.setProperty(r,u.values[0])})),o=e.attachEntity(o,y),u.publish({entityAction:_e.AttachOnImport,entity:o}),y.isUnchanged()||s._notifyStateChange(o,!0);p.push(o)}),p}function x(e,t){var r=e[t.toString()];if(r)return r;var n=t._subtypes;if(!n)return null;for(var a=0,i=n.length;a<i;a++)if(r=e[t.toString(n[a])])return r;return null}function F(e,t,r){return e=e.then(function(e){return t&&t(e),ke.resolve(e)},function(e){return r&&r(e),ke.reject(e)})}function M(e,t){var r;return r=t?t.filter(function(t){if(t.entityAspect.entityManager!==e)throw new Error("Only entities in this entityManager may be saved");return!t.entityAspect.entityState.isDetached()}):e.getChanges()}function k(e,t){e._inKeyFixup=!0,t.forEach(function(t){var r=e._entityGroupMap[t.entityTypeName];if(!r)throw new Error("Unable to locate the following fully qualified EntityType name: "+t.entityTypeName);r._fixupKey(t.tempValue,t.realValue)}),e._inKeyFixup=!1}function D(e,t){var r=e._entityGroupMap;return t?m(t).map(function(e){if(e instanceof Ve)return r[e.name];throw new Error("The EntityManager.getChanges() 'entityTypes' parameter must be either an entityType or an array of entityTypes or null")}):u(r)}function I(e,t){var r=t.entityAspect.getKey(),n=T(t.entityType.keyProperties,r.values,function(e,t){return e.defaultValue===t?e:null}).filter(function(e){return null!==e});if(n.length)if(t.entityType.autoGeneratedKeyType!==qe.None)e.generateTempKeyValue(t);else if(n.length===r.values.length)throw new Error("Cannot attach an object of type  ("+t.entityType.name+") to an EntityManager without first setting its key or setting its entityType 'AutoGeneratedKeyType' property to something other than 'None'")}function V(e,t){return t?(t=m(t),t.forEach(function(e){if(!Ce.contains(e))throw new Error("The EntityManager.getChanges() 'entityStates' parameter must either be null, an entityState or an array of entityStates")}),t):null}function j(e,t,r,n){var a=t.entityType.navigationProperties;a.forEach(function(a){var i=t.getProperty(a.name);if(a.isScalar){if(!i)return;e.attachEntity(i,r,n)}else i.forEach(function(t){e.attachEntity(t,r,n)})})}function R(e,t,a,i){try{var o,s=e.metadataStore;if(s.isEmpty()&&i.hasServerMetadata)throw new Error("cannot execute _executeQueryCore until metadataStore is populated.");if(a.fetchStrategy===We.FromLocalCache)try{var u=n(e,t);return ke.resolve({results:u.results,entityManager:e,inlineCount:u.inlineCount,query:t})}catch(p){return ke.reject(p)}var c=new tt({query:t,entityManager:e,dataService:i,mergeOptions:{mergeStrategy:a.mergeStrategy,noTracking:!!t.noTrackingEnabled,includeDeleted:a.includeDeleted}}),l=e.validationOptions.validateOnQuery;return i.adapterInstance.executeQuery(c).then(function(n){var a=A(function(){var t={isLoading:e.isLoading};return e.isLoading=!0,e._pendingPubs=[],t},function(r){e.isLoading=r.isLoading,e._pendingPubs.forEach(function(e){e()}),e._pendingPubs=null,e._hasChangesAction&&e._hasChangesAction(),t=null,c=null,r.error&&ke.reject(r.error)},function(){var a=i.jsonResultsAdapter.extractResults(n);a=m(a),o=c.visitAndMerge(a,{nodeType:"root"}),l&&o.forEach(function(e){e.entityAspect&&e.entityAspect.validateEntity()}),c.processDeferred(),K(o,t);var s=r(c.refMap);return{results:o,query:t,entityManager:e,httpResponse:n.httpResponse,inlineCount:n.inlineCount,retrievedEntities:s}});return ke.resolve(a)},function(r){return r&&(r.query=t,r.entityManager=e),ke.reject(r)})}catch(p){return p&&(p.query=t),ke.reject(p)}}function K(e,t){if(!t.noTrackingEnabled){var r=t.expandClause;null!=r&&r.propertyPaths.forEach(function(t){var r=t.split(".");q(e,r)})}}function q(e,t){var r=t[0];e.forEach(function(e){var n=e.entityAspect;if(n&&(n._markAsLoaded(r),1!==t.length)){var a=e.getProperty(r);a&&(a.arrayChanged||(a=[a]),q(a,t.slice(1)))}})}function z(e){var t=e.filter(function(e){return e.entityAspect.isBeingSaved=!0,e.entityAspect.entityState.isModified()&&e.entityType.concurrencyProperties.length>0});0!==t.length&&t.forEach(function(e){e.entityType.concurrencyProperties.forEach(function(t){B(e,t)})})}function B(e,t){if(!e.entityAspect.originalValues[t.name]){var r=e.getProperty(t.name);if(r||(r=t.dataType.defaultValue),t.dataType.isNumeric)e.setProperty(t.name,r+1);else{if(!t.dataType.getConcurrencyValue){if(t.dataType===xe.Binary)return;throw new Error("Unable to update the value of concurrency property before saving: "+t.name)}var n=t.dataType.getConcurrencyValue(r);e.setProperty(t.name,n)}}}function $(e,t){var r=e._entityGroupMap[t.name];return r||(r=new Xe(e,t),e._entityGroupMap[t.name]=r),r}function L(e,t){var r=t.getSelfAndSubtypes();return r.map(function(t){return $(e,t)})}function G(e,t){var r={},n=e.entityType||e.complexType,a=W(n),i={};return n.dataProperties.forEach(function(n){if(n.isComplexProperty)r[n.nameOnServer]=v(e.getProperty(n.name),function(e){return G(e,t)});else{var o=e.getProperty(n.name);if(o=t?t(n,o):o,void 0===o)return;o=a?a(n,o):o,void 0!==o&&(n.isUnmapped?i[n.nameOnServer]=h(o):r[n.nameOnServer]=o)}}),U(i)||(r.__unmapped=i),r}function J(e,r,n){var a=e.entityType||e.complexType,i=e.entityAspect||e.complexAspect,o=r.namingConvention.clientPropertyNameToServer,s={};return t(i.originalValues,function(e,t){var r=a.getProperty(e);t=n?n(r,t):t,void 0!==t&&(s[o(e,r)]=t)}),a.complexProperties.forEach(function(t){var a=e.getProperty(t.name);if(t.isScalar){var i=J(a,r,n);U(i)||(s[o(t.name,t)]=i)}else{var u=a.map(function(e){return J(e,r,n)});s[o(t.name,t)]=u}}),s}function Q(e,r,n){var a=e.entityType,i=W(a),o=r.namingConvention.clientPropertyNameToServer,s={};return t(e.entityAspect.originalValues,function(t,r){var u=a.getProperty(t),p=e.getProperty(t);p=n?n(u,p):p,void 0!==p&&(p=i?i(u,p):p,void 0!==p&&(s[o(t,u)]=p))}),a.complexProperties.forEach(function(t){if(H(e,t)){var r=e.getProperty(t.name);s[o(t.name,t)]=v(r,function(e){return G(e,n)})}}),s}function H(e,t){var r=e.getProperty(t.name);return t.isScalar?Z(r):!!r._origValues||r.some(function(e){return Z(e)})}function Z(e){return!U(e.complexAspect.originalValues)||e.complexType.complexProperties.some(function(t){return H(e,t)})}function W(e){return e.serializerFn||e.metadataStore&&e.metadataStore.serializerFn}function Y(){this.map={}}var X=function(t){if(arguments.length>1)throw new Error("The EntityManager ctor has a single optional argument that is either a 'serviceName' or a configuration object.");0===arguments.length?t={serviceName:""}:"string"==typeof t&&(t={serviceName:t}),e(this,t,!0),this.entityChanged=new ge("entityChanged",this),this.validationErrorsChanged=new ge("validationErrorsChanged",this),this.hasChangesChanged=new ge("hasChangesChanged",this),this.clear()},ee=X.prototype;return ee._$typeName="EntityManager",ge.bubbleEvent(ee,null),ee.setProperties=function(t){e(this,t,!1)},ee.createEntity=function(e,t,r,n){he(e,"entityType").isString().or().isInstanceOf(Ve).check(),he(r,"entityState").isEnumOf(Ce).isOptional().check(),he(n,"mergeStrategy").isEnumOf(Ze).isOptional().check(),"string"==typeof e&&(e=this.metadataStore._getEntityType(e)),r=r||Ce.Added;var a;return O(this,"isLoading",!0,function(){a=e.createEntity(t)}),r!==Ce.Detached&&(a=this.attachEntity(a,r,n)),a},X.importEntities=function(e,t){var r=new et;return r.importEntities(e,t),r},ee.acceptChanges=function(){this.getChanges().map(function(e){return e.entityAspect._checkOperation("acceptChanges")}).forEach(function(e){e.acceptChanges()})},ee.exportEntities=function(e,t){he(e,"entities").isArray().isEntity().or().isNonEmptyArray().isInstanceOf(Ve).or().isNonEmptyArray().isString().or().isOptional().check(),he(t,"config").isObject().or().isBoolean().or().isOptional().check(),null==t?t={includeMetadata:!0,asString:!0}:"boolean"==typeof t&&(t={includeMetadata:t,asString:!0}),me(t).whereParam("asString").isBoolean().isOptional().withDefault(!0).whereParam("includeMetadata").isBoolean().isOptional().withDefault(!0).applyAll(t);var r=S(this,e),n=p({},r,["tempKeys","entityGroupMap"]);t.includeMetadata?(n=p(n,this,["dataService","saveOptions","queryOptions","validationOptions"]),n.metadataStore=this.metadataStore.exportMetadata()):(n.metadataVersion=se.metadataVersion,n.metadataStoreName=this.metadataStore.name);var a=t.asString?JSON.stringify(n,null,we.stringifyPad):n;return a},ee.importEntities=function(e,r){r=r||{},me(r).whereParam("mergeStrategy").isEnumOf(Ze).isOptional().withDefault(this.queryOptions.mergeStrategy).whereParam("metadataVersionFn").isFunction().isOptional().applyAll(r);var n=this,a="string"==typeof e?JSON.parse(e):e;a.metadataStore?(this.metadataStore.importMetadata(a.metadataStore),this.dataService=a.dataService&&Fe.fromJSON(a.dataService)||new Fe({serviceName:a.serviceName}),this.saveOptions=new rt(a.saveOptions),this.queryOptions=Ye.fromJSON(a.queryOptions),this.validationOptions=new be(a.validationOptions)):r.metadataVersionFn&&r.metadataVersionFn({metadataVersion:a.metadataVersion,metadataStoreName:a.metadataStoreName});var i={};a.tempKeys.forEach(function(e){var t=Ae.fromJSON(e,n.metadataStore);i[t.toString()]=new Ae(t.entityType,n.keyGenerator.generateTempKeyValue(t.entityType,t.values[0]))});var o=[];return r.tempKeyMap=i,A(function(){n._pendingPubs=[]},function(e){n._pendingPubs.forEach(function(e){e()}),n._pendingPubs=null,n._hasChangesAction&&n._hasChangesAction()},function(){t(a.entityGroupMap,function(e,t){var a=n.metadataStore._getEntityType(e,!0),i=$(n,a),s=C(i,t,r);Array.prototype.push.apply(o,s)}),o.forEach(function(e){e.entityAspect.entityState.isDeleted()||n._linkRelatedEntities(e)})}),{entities:o,tempKeyMapping:i}},ee.clear=function(){r(this._entityGroupMap,function(e,t){return t._checkOperation()}).forEach(function(e){e._clear()}),this._entityGroupMap={},this._unattachedChildrenMap=new Y,this.keyGenerator=new this.keyGeneratorCtor,this.entityChanged.publish({entityAction:_e.Clear}),this._setHasChanges(!1)},ee.createEmptyCopy=function(){var e=new X(p({},this,["dataService","metadataStore","queryOptions","saveOptions","validationOptions","keyGeneratorCtor"]));return e},ee.addEntity=function(e){return this.attachEntity(e,Ce.Added)},ee.attachEntity=function(e,t,r){if(he(e,"entity").isRequired().check(),this.metadataStore._checkEntityType(e),t=he(t,"entityState").isEnumOf(Ce).isOptional().check(Ce.Unchanged),r=he(r,"mergeStrategy").isEnumOf(Ze).isOptional().check(Ze.Disallowed),e.entityType.metadataStore!==this.metadataStore)throw new Error("Cannot attach this entity because the EntityType ("+e.entityType.name+") and MetadataStore associated with this entity does not match this EntityManager's MetadataStore.");var n=e.entityAspect;if(n){if(n._inProcessEntity)return n._inProcessEntity}else n=new Ne(e);var a=n.entityManager;if(a){if(a===this)return e;throw new Error("This entity already belongs to another EntityManager")}var i,o=this;return O(this,"isLoading",!0,function(){t.isAdded()&&I(o,e),i=o._attachEntityCore(e,t,r),n._inProcessEntity=i;try{j(o,e,t,r)}finally{n._inProcessEntity=null}}),this.validationOptions.validateOnAttach&&i.entityAspect.validateEntity(),t.isUnchanged()||this._notifyStateChange(i,!0),this.entityChanged.publish({entityAction:_e.Attach,entity:i}),i},ee.detachEntity=function(e){he(e,"entity").isEntity().check();var t=e.entityAspect;if(!t)return!1;if(t.entityManager!==this)throw new Error("This entity does not belong to this EntityManager.");return t.setDetached()},ee.fetchMetadata=function(e,t,r){"function"==typeof e?(r=t,t=e,e=null):(he(e,"dataService").isInstanceOf(Fe).isOptional().check(),he(t,"callback").isFunction().isOptional().check(),he(r,"errorCallback").isFunction().isOptional().check());var n=this.metadataStore.fetchMetadata(e||this.dataService);return F(n,t,r)},ee.executeQuery=function(e,t,r){he(e,"query").isInstanceOf(Le).or().isString().check(),he(t,"callback").isFunction().isOptional().check(),he(r,"errorCallback").isFunction().isOptional().check();var n,a=Ye.resolve([e.queryOptions,this.queryOptions,Ye.defaultInstance]),i=Fe.resolve([e.dataService,this.dataService]);if(!i.hasServerMetadata||this.metadataStore.hasMetadataFor(i.serviceName))n=R(this,e,a,i);else{var o=this;n=this.fetchMetadata(i).then(function(){return R(o,e,a,i)})}return F(n,t,r)},ee.executeQueryLocally=function(e){return n(this,e).results},ee.saveChanges=function(e,t,r,n){function i(e){var t=d.entityManager;w(p,!1);e.entities=d.processSavedEntities(e);return t._setHasChanges(null),r&&r(e),ke.resolve(e)}function s(e){var t=e.entities,r=e.deletedKeys||[];if(0===t.length&&0==r.length)return[];var n=e.keyMappings,a=d.entityManager;return k(a,n),O(a,"isLoading",!0,function(){var e=new tt({query:null,entityManager:a,mergeOptions:{mergeStrategy:Ze.OverwriteChanges},dataService:h});t=e.visitAndMerge(t,{nodeType:"root"})}),r.forEach(function(e){var t=a.metadataStore._getEntityType(e.entityTypeName),r=new Ae(t,e.keyValues),n=a.findEntityByKey(r);n&&n.entityAspect.setDetached()}),t}function u(e){return w(p,!1),o(d,e),n&&n(e),ke.reject(e)}he(e,"entities").isOptional().isArray().isEntity().check(),he(t,"saveOptions").isInstanceOf(rt).isOptional().check(),he(r,"callback").isFunction().isOptional().check(),he(n,"errorCallback").isFunction().isOptional().check(),t=t||this.saveOptions||rt.defaultInstance;var p=M(this,e);if(0===p.length){var c={entities:[],keyMappings:[]};return r&&r(c),ke.resolve(c)}if(!t.allowConcurrentSaves){var l=p.some(function(e){return e.entityAspect.isBeingSaved});if(l){var y=new Error("Concurrent saves not allowed - SaveOptions.allowConcurrentSaves is false");return n&&n(y),ke.reject(y)}}a(p);var f=this.saveChangesValidateOnClient(p);if(f)return n&&n(f),ke.reject(f);var h=Fe.resolve([t.dataService,this.dataService]),d={entityManager:this,dataService:h,processSavedEntities:s,resourceName:t.resourceName||this.saveOptions.resourceName||"SaveChanges"},m={entities:p,saveOptions:t};try{return z(p),h.adapterInstance.saveChanges(d,m).then(i).then(null,u)}catch(y){return w(p,!1),n&&n(y),ke.reject(y)}},ee.saveChangesValidateOnClient=function(e){if(this.validationOptions.validateOnSave){var t=e.filter(function(e){var t=e.entityAspect,r=t.entityState.isDeleted()||t.validateEntity();return!r});if(t.length>0){var r=new Error("Client side validation errors encountered - see the entityErrors collection on this object for more detail");return r.entityErrors=i(t),r}}return null},ee._findEntityGroup=function(e){return this._entityGroupMap[e.name]},ee.getEntityByKey=function(){var e=d(this,arguments).entityKey,t=e._subtypes||[e.entityType],r=null;return t.some(function(t){var n=this._findEntityGroup(t);return r=n&&n.findEntityByKey(e)},this),r},ee.fetchEntityByKey=function(){var e=Fe.resolve([this.dataService]);if(!e.hasServerMetadata||this.metadataStore.hasMetadataFor(e.serviceName))return s(this,arguments);var t=this,r=arguments;return this.fetchMetadata(e).then(function(){return s(t,r)})},ee.findEntityByKey=function(e){return this.getEntityByKey(e)},ee.generateTempKeyValue=function(e){he(e,"entity").isEntity().check();var t=e.entityType,r=this.keyGenerator.generateTempKeyValue(t),n=t.keyProperties[0];return e.setProperty(n.name,r),e.entityAspect.hasTempKey=!0,r},ee.hasChanges=function(e){return!!this._hasChanges&&(void 0===e?this._hasChanges:this._hasChangesCore(e))},ee._hasChangesCore=function(e){e=l(this,e);var t=D(this,e);return t.some(function(e){return e&&e.hasChanges()})},ee.getChanges=function(e){return e=l(this,e),y(this,e)},ee.rejectChanges=function(){if(!this._hasChanges)return[];var e=y(this,null),t=e.map(function(e){return e.entityAspect._checkOperation("rejectChanges")});return this._hasChanges=!1,t.forEach(function(e){e.rejectChanges()}),this.hasChangesChanged.publish({entityManager:this,hasChanges:!1}),e},ee.getEntities=function(e,t){return e=l(this,e),he(t,"entityStates").isOptional().isEnumOf(Ce).or().isNonEmptyArray().isEnumOf(Ce).check(),t=t&&V(this,t),f(this,e,t)},ee._notifyStateChange=function(e,t){var r={entityAction:_e.EntityStateChange,entity:e};if(t)this._hasChanges||this._setHasChanges(!0);else if(this._hasChanges){if(this.isLoading)return void(this._hasChangesAction=this._hasChangesAction||function(){this._setHasChanges(null),this.entityChanged.publish(r)}.bind(this));this._setHasChanges(null)}this.entityChanged.publish(r)},ee._setHasChanges=function(e){null==e&&(e=this._hasChangesCore());var t=this._hasChanges;this._hasChanges=e,e!=t&&this.hasChangesChanged.publish({entityManager:this,hasChanges:e}),this._hasChangesAction=null},ee._linkRelatedEntities=function(e){var t=this,r=e.entityAspect;O(t,"isLoading",!0,function(){for(var n=t._unattachedChildrenMap,a=r.getKey(),i=a.entityType;i;){var o=a.toString(i),s=n.getTuplesByString(o);s&&s.length&&s.slice(0).forEach(function(t){var r,a,i=t.children.filter(function(e){return e.entityAspect.entityState!==Ce.Detached}),s=t.navigationProperty;if(s.getInverse())if(r=s,a=s.getInverse(),a.isScalar){var u=i[0];e.setProperty(a.name,u),u.setProperty(r.name,e)}else{var p=e.getProperty(a.name);i.forEach(function(t){p.push(t),t.setProperty(r.name,e)})}else if(s.isScalar)r=s,i.forEach(function(t){t.setProperty(r.name,e)});else{a=s;var p=e.getProperty(a.name);i.forEach(function(e){p._push(e)})}n.removeChildrenByString(o,r)}),i=i.baseEntityType}e.entityType.navigationProperties.forEach(function(a){if(a.isScalar){var i=e.getProperty(a.name);if(i)return}var o=r.getParentKey(a);if(o){if(o._isEmpty())return;var s=t.findEntityByKey(o);s?e.setProperty(a.name,s):n.addChild(o,a,e)}}),e.entityType.foreignKeyProperties.forEach(function(r){var a=r.inverseNavigationProperty;if(a){var i=e.getProperty(r.name),o=new Ae(a.parentType,[i]),s=t.findEntityByKey(o);s?a.isScalar?s.setProperty(a.name,e):t.isLoading?s.getProperty(a.name)._push(e):s.getProperty(a.name).push(e):n.addChild(o,a,e)}})})},ee._attachEntityCore=function(e,t,r){var n=$(this,e.entityType),a=n.attachEntity(e,t,r);return this._linkRelatedEntities(a),a},ee._updateFkVal=function(e,t,r){var n=this._entityGroupMap[e.parentType.name];n&&n._updateFkVal(e,t,r)},ee.helper={unwrapInstance:G,unwrapOriginalValues:J,unwrapChangedValues:Q},Y.prototype.addChild=function(e,t,r){var n=this.getTuple(e,t);n||(n={navigationProperty:t,children:[]},b(this.map,e.toString()).push(n)),n.children.push(r)},Y.prototype.removeChildrenByString=function(e,t){var r=this.map[e];r&&(E(r,function(e){return e.navigationProperty===t}),r.length||delete this.map[e])},Y.prototype.getTuple=function(e,t){var r=this.getTuples(e);if(!r)return null;var n=g(r,function(e){return e.navigationProperty===t});return n},Y.prototype.getTuples=function(e){for(var t=this.map[e.toString()],r=e.entityType;!t&&r.baseEntityType;){r=r.baseEntityType;var n=e.toString(r);t=this.map[n]}return t},Y.prototype.getTuplesByString=function(e){return this.map[e]},X}();se.EntityManager=et;var tt=function(){function e(e,t,a,o){if(a.ignore||null==t)return null;if(a.nodeRefId){var u=i(e,a.nodeRefId);return"function"==typeof u&&null!=o?void e.deferredFns.push(function(){o(u)}):u}if(a.entityType){var p=a.entityType;return e.mergeOptions.noTracking?(t=r(e,p,t),p.noTrackingFn&&(t=p.noTrackingFn(t,p)),a.nodeId&&(e.refMap[a.nodeId]=t),t):p.isComplexType?r(e,p,t):s(e,t,a)}return a.passThru||"object"!=typeof t||I(t)||(t=n(e,t)),a.nodeId&&(e.refMap[a.nodeId]=t),t}function r(e,t,n){var i={};return t.dataProperties.forEach(function(t){t.isComplexProperty?i[t.name]=v(n[t.nameOnServer],function(n){return r(e,t.dataType,n)}):i[t.name]=E(n[t.nameOnServer],t.dataType)}),t.navigationProperties&&t.navigationProperties.forEach(function(t){var r={nodeType:"navProp",navigationProperty:t};a(n[t.nameOnServer],e,r,i,t.name)}),i}function n(e,r){var n=e.metadataStore.namingConvention.serverPropertyNameToClient,i={};return t(r,function(t,r){var o=n(t),s={nodeType:"anonProp",propertyName:o};a(r,e,s,i,o)}),i}function a(t,r,n,a,i){var o=r.jsonResultsAdapter,s=o.visitNode(t,r,n)||{};if(t=s.node||t,!s.ignore)return s.passThru?t:void(Array.isArray(t)?(n.nodeType=n.nodeType+"Item",a[i]=t.map(function(t,u){return s=o.visitNode(t,r,n)||{},t=s.node||t,e(r,t,s,function(e){a[i][u]=e()})})):a[i]=e(r,t,s,function(e){a[i]=e()}))}function i(e,t){var r=e.refMap[t];return void 0===r?function(){return e.refMap[t]}:r}function o(e,t,r){var n=r._$meta.nodeId;!n&&r._$meta.extraMetadata&&(n=r._$meta.extraMetadata.uriKey),null!=n&&(e.refMap[n]=t)}function s(e,t,r){t._$meta=r;var n=e.entityManager,a=r.entityType;"string"==typeof a&&(a=e.metadataStore._getEntityType(a,!1)),t.entityType=a;var i=e.mergeOptions.mergeStrategy,o=null==e.query,s=a.getEntityKeyFromRawEntity(t,e.rawValueFn),p=n.findEntityByKey(s);if(p){if(o&&p.entityAspect.entityState.isDeleted())return n.detachEntity(p),p;var y=p.entityAspect.entityState;if(i===Ze.Disallowed)throw new Error("A MergeStrategy of 'Disallowed' prevents "+s.toString()+" from being merged");if(i===Ze.SkipMerge)c(e,p,t);else if(i===Ze.OverwriteChanges||y.isUnchanged()){l(e,p,t),p.entityAspect.wasLoaded=!0,r.extraMetadata&&(p.entityAspect.extraMetadata=r.extraMetadata),p.entityAspect.entityState=Ce.Unchanged,u(p),p.entityAspect.propertyChanged.publish({entity:p,propertyName:null});var f=o?_e.MergeOnSave:_e.MergeOnQuery;n.entityChanged.publish({entityAction:f,entity:p}),y.isUnchanged()||n._notifyStateChange(p,!1)}else{if(y==Ce.Deleted&&!e.mergeOptions.includeDeleted)return null;c(e,p,t)}}else p=a._createInstanceCore(),l(e,p,t),r.extraMetadata&&(p.entityAspect.extraMetadata=r.extraMetadata),n._attachEntityCore(p,Ce.Unchanged,i),p.entityAspect.wasLoaded=!0,n.entityChanged.publish({entityAction:_e.AttachOnQuery,entity:p});return p}function u(e){var t=e.entityAspect||e.complexAspect;t.originalValues={};var r=e.entityType||e.complexType;r.complexProperties.forEach(function(t){var r=e.getProperty(t.name);t.isScalar?u(r):(r._acceptChanges(),r.forEach(u))})}function c(e,t,r){o(e,t,r),r.entityType.navigationProperties.forEach(function(t){t.isScalar?h(e,r,t):d(e,r,t)})}function l(e,t,r){o(e,t,r);var n=t.entityType;n._updateTargetFromRaw(t,r,e.rawValueFn),n.navigationProperties.forEach(function(n){n.isScalar?y(e,n,t,r):f(e,n,t,r)})}function y(e,t,r,n){var a=h(e,n,t);null!=a&&("function"==typeof a?e.deferredFns.push(function(){a=a(),m(a,r,t)}):m(a,r,t))}function f(e,t,r,n){var a=d(e,n,t);if(null!=a){var i=t.getInverse();if(i){var o=r.getProperty(t.name);o.wasLoaded=!0,a.forEach(function(t){"function"==typeof t?e.deferredFns.push(function(){t=t(),g(e,t,o,r,i)}):g(e,t,o,r,i)})}}}function h(e,t,r){var n=t[r.nameOnServer];if(!n)return null;var a=e.visitAndMerge(n,{nodeType:"navProp",navigationProperty:r});return a}function d(e,t,r){var n=t[r.nameOnServer];if(!n)return null;if(!Array.isArray(n)&&(n=n.results,!n))return null;var a=e.visitAndMerge(n,{nodeType:"navPropItem",navigationProperty:r});return a}function m(e,t,r){if(e){var n=r.name,a=t.getProperty(n);if(a!==e){t.setProperty(n,e);var i=r.getInverse();if(!i)return;if(i.isScalar)e.setProperty(i.name,t);else{var o=e.getProperty(i.name);o.push(t)}}}}function g(e,t,r,n,a){if(t){if(t.entityAspect.entityState===Ce.Modified&&e.mergeOptions.mergeStrategy===Ze.PreserveChanges){var i=t.entityAspect.originalValues,o=a.relatedDataProperties.some(function(e){return void 0!=i[e.name]});if(o)return}var s=t.getProperty(a.name);s!==n&&(r.push(t),t.setProperty(a.name,n))}}var w=function(e){p(this,e,["query","entityManager","dataService","mergeOptions"]),this.refMap={},this.deferredFns=[],this.jsonResultsAdapter=this.dataService.jsonResultsAdapter,this.metadataStore=this.entityManager.metadataStore,this.rawValueFn=Re.getRawValueFromServer},S=w.prototype,E=xe.parseRawValue;return S._$typeName="MappingContext",S.getUrl=function(){var e=this.query;if(!e)throw new Error("query cannot be empty");var t;if("string"==typeof e)t=e;else{if(!(e instanceof Le))throw new Error("unable to recognize query parameter as either a string or an EntityQuery");t=this.dataService.uriBuilder.buildUri(e,this.metadataStore)}return this.dataService.qualifyUrl(t)},S.visitAndMerge=function(t,r){var n=this.query,a=this.jsonResultsAdapter;r=r||{};var i=this;return v(t,function(t){if(null==n&&t.entityAspect)return t.entityAspect.entityState.isDeleted()?i.entityManager.detachEntity(t):t.entityAspect.acceptChanges(),t;var o=a.visitNode(t,i,r)||{};return t=o.node||t,n&&"root"===r.nodeType&&!o.entityType&&(o.entityType=n._getToEntityType&&n._getToEntityType(i.metadataStore)),e(i,t,o)},this.mergeOptions.includeDeleted)},S.processDeferred=function(){this.deferredFns.length>0&&this.deferredFns.forEach(function(e){e()})},w}(),rt=function(){function e(e,t){return t&&me(t).whereParam("resourceName").isOptional().isString().whereParam("dataService").isOptional().isInstanceOf(Fe).whereParam("allowConcurrentSaves").isBoolean().isOptional().whereParam("tag").isOptional().applyAll(e),e}var t=function(t){e(this,t)},r=t.prototype;return r._$typeName="SaveOptions",r.setAsDefault=function(){return l(this,t)},r.using=function(t){return e(this,t)},t.defaultInstance=new t({allowConcurrentSaves:!1}),t}();se.SaveOptions=rt,se.AbstractDataServiceAdapter=function(){function e(e,t){this.getRequest=function(e,t,r){return e},this.done=function(e){}}function t(e,t,n){var a=r(t);return i._catchNoConnectionError(a),n&&(a.message=n+"; "+a.message),e.reject(a)}function r(e){var t=new Error;t.httpResponse=e,t.status=e.status;var r=e.data;if(!r)return t.message=e.error&&e.error.toString(),t;if("string"==typeof r)try{r=JSON.parse(r)}catch(n){return t.message=r,t}var a,i,o=e.saveContext,s=r.Message||r.ExceptionMessage||r.EntityErrors||r.Errors,u=!!s;if(u){var s=r;do a=s.ExceptionMessage||s.Message,s=s.InnerException;while(s);i=r.Errors||r.EntityErrors,i=i&&i.map(function(e){return{errorName:e.ErrorName,entityTypeName:De.normalizeTypeName(e.EntityTypeName),keyValues:e.KeyValues,propertyName:e.PropertyName,errorMessage:e.ErrorMessage}})}else a=r.message,i=r.errors||r.entityErrors;if(o&&i){var p=o.entityManager.metadataStore.namingConvention.serverPropertyNameToClient;i.forEach(function(e){e.propertyName=e.propertyName&&p(e.propertyName)}),t.entityErrors=i}return t.message=a||"Server side errors encountered - see the entityErrors collection on this object for more detail",t}var n,a=function(){},i=a.prototype;return i.checkForRecomposition=function(e){"ajax"===e.interfaceName&&e.isDefault&&this.initialize()},i.initialize=function(){if(n=se.config.getAdapterInstance("ajax"),!n||!n.ajax)throw new Error("Unable to find ajax adapter for dataservice adapter '"+(this.name||"")+"'.")},i.fetchMetadata=function(e,r){var a=r.serviceName,i=r.qualifyUrl("Metadata"),o=ke.defer();return n.ajax({type:"GET",url:i,dataType:"json",success:function(n){if(e.hasMetadataFor(a))return o.resolve("already fetched");var s=n.data;try{var u="string"==typeof s?JSON.parse(s):s;e.importMetadata(u)}catch(p){var c="Unable to either parse or import metadata: "+p.message;return t(o,n,"Metadata query failed for: "+i+". "+c)}return e.hasMetadataFor(a)||e.addDataService(r),o.resolve(u)},error:function(e){t(o,e,"Metadata query failed for: "+i)}}),o.promise},i.executeQuery=function(e){var r=(e.adapter=this,ke.defer()),a=e.getUrl(),i={type:"GET",url:a,params:e.query.parameters,dataType:"json",success:function(e){var n=e.data;try{var a,i=n&&(n.results||n.Results);a=i?{results:i,inlineCount:n.inlineCount||n.InlineCount,httpResponse:e}:{results:n,httpResponse:e},r.resolve(a)}catch(o){o instanceof Error?r.reject(o):t(r,e)}},error:function(e){t(r,e)}};return e.dataService.useJsonp&&(i.dataType="jsonp",i.crossDomain=!0),n.ajax(i),r.promise},i.saveChanges=function(e,r){var a=e.adapter=this,i=ke.defer();r=a._prepareSaveBundle(e,r);var o=JSON.stringify(r),s=e.dataService.qualifyUrl(e.resourceName);return n.ajax({
type:"POST",url:s,dataType:"json",contentType:"application/json",data:o,success:function(r){r.saveContext=e;var n=r.data;if(n.Errors||n.errors)t(i,r);else{var o=a._prepareSaveResult(e,n);o.httpResponse=r,i.resolve(o)}},error:function(r){r.saveContext=e,t(i,r)}}),i.promise},i._prepareSaveBundle=function(){throw new Error("Need a concrete implementation of _prepareSaveBundle")},i.changeRequestInterceptor=e,i._createChangeRequestInterceptor=function(t,r){var n=t.adapter,a=n.changeRequestInterceptor,i=j;if(i(a)){var o=n.name+" DataServiceAdapter's ChangeRequestInterceptor",s=" is missing or not a function.",u=new a(t,r);if(!i(u.getRequest))throw new Error(o+".getRequest"+s);if(!i(u.done))throw new Error(o+".done"+s);return u}return new e(t,r)},i._prepareSaveResult=function(){throw new Error("Need a concrete implementation of _prepareSaveResult")},i.jsonResultsAdapter=new Me({name:"noop",visitNode:function(){return{}}}),i._catchNoConnectionError=function(e){0==e.status&&null==e.message&&(e.message="HTTP response status 0 and no message.  Likely did not or could not reach server. Is the server running?")},a}(),function(e){"object"==typeof se?e(se):"function"==typeof require&&"object"==typeof exports&&"object"==typeof module?e(require("breeze-client")):"function"==typeof define&&define.amd&&define(["breeze-client"],e)}(function(e){function t(e){var r,n,a,i="";for(var o in e){var s=e[o];if(s instanceof Array)for(var u=0;u<s.length;++u)r=s[u],a=o+"["+u+"]",n={},n[a]=r,i+=t(n)+"&";else if(s&&s.toISOString)i+=encodeURIComponent(o)+"="+encodeURIComponent(s.toISOString())+"&";else if(s instanceof Object)for(var p in s)r=s[p],a=o+"["+p+"]",n={},n[a]=r,i+=t(n)+"&";else null===s?i+=encodeURIComponent(o)+"=&":void 0!==s&&(i+=encodeURIComponent(o)+"="+encodeURIComponent(s)+"&")}return i.length?i.substr(0,i.length-1):i}var r=e.core,n=function(){this.name="angular",this.defaultSettings={},this.requestInterceptor=null},a=n.prototype;a.initialize=function(){var e=r.requireLib("angular");if(e){var t,n,a=e.injector(["ng"]);a.invoke(["$http","$rootScope",function(e,r){t=e,n=r}]),this.$http=t,this.$rootScope=n}},a.setHttp=function(e){this.$http=e,this.$rootScope=null},a.ajax=function(e){function n(t,r,n,a,i){"null"===t&&(t=null);var o={config:e,data:t,getHeaders:n,ngConfig:a,status:r,statusText:i};e.success(o)}function a(t,r,n,a,i){0===r&&null==t&&(t="timeout");var o={config:e,data:t,getHeaders:n,ngConfig:a,status:r,statusText:i};e.error(o)}if(!this.$http)throw new Error("Unable to locate angular for ajax adapter");var i={method:e.type,url:e.url,dataType:e.dataType,contentType:e.contentType,crossDomain:e.crossDomain,headers:e.headers||{}};if(e.params){var o=i.url.indexOf("?")>=0?"&":"?";i.url=i.url+o+t(e.params)}if(e.data&&(i.data=e.data),!r.isEmpty(this.defaultSettings)){var s=r.extend({},this.defaultSettings);i=r.extend(s,i);var u=r.extend({},this.defaultSettings.headers);i.headers=r.extend(u,i.headers)}var p={adapter:this,config:i,dsaConfig:e,success:n,error:a};r.isFunction(this.requestInterceptor)&&(this.requestInterceptor(p),this.requestInterceptor.oneTime&&(this.requestInterceptor=null)),p.config&&(this.$http(p.config).success(p.success).error(p.error),this.$rootScope&&this.$rootScope.$digest())},e.config.registerAdapter("ajax",n)}),function(e){"object"==typeof se?e(se):"function"==typeof require&&"object"==typeof exports&&"object"==typeof module?e(require("breeze-client")):"function"==typeof define&&define.amd&&define(["breeze-client"],e)}(function(e){function t(e){return 0===e.status?function(e){return e&&e.length>0?"":{}}:function(t){return t&&t.length>0?e.getResponseHeader(t):e.getAllResponseHeaders()}}var r,n=e.core,a=function(){this.name="jQuery",this.defaultSettings={},this.requestInterceptor=null},i=a.prototype;i.initialize=function(){r=n.requireLib("jQuery;jquery")},i.ajax=function(e){function a(r,n,a){var i={config:e,data:r,getHeaders:t(a),status:a.status,statusText:n};e.success(i),a.onreadystatechange=null,a.abort=null}function i(r,n,a){var i={config:e,data:r.responseText,error:a,getHeaders:t(r),status:r.status,statusText:n};e.error(i),r.onreadystatechange=null,r.abort=null}if(!r)throw new Error("Unable to locate jQuery");var o={type:e.type,url:e.url,data:e.params||e.data,dataType:e.dataType,contentType:e.contentType,crossDomain:e.crossDomain,headers:e.headers||{}};if(!n.isEmpty(this.defaultSettings)){var s=n.extend({},this.defaultSettings);o=n.extend(s,o);var u=n.extend({},this.defaultSettings.headers);o.headers=n.extend(u,o.headers)}var p={adapter:this,config:o,dsaConfig:e,success:a,error:i};n.isFunction(this.requestInterceptor)&&(this.requestInterceptor(p),this.requestInterceptor.oneTime&&(this.requestInterceptor=null)),p.config&&(p.jqXHR=r.ajax(p.config).done(p.success).fail(p.error))},e.config.registerAdapter("ajax",a)}),function(e){"object"==typeof se?e(se):"function"==typeof require&&"object"==typeof exports&&"object"==typeof module?e(require("breeze-client")):"function"==typeof define&&define.amd&&define(["breeze-client"],e)}(function(e){function t(e){var t=[];for(var r in e)e.hasOwnProperty(r)&&t.push(encodeURIComponent(r)+"="+encodeURIComponent(e[r]));return t.join("&")}function r(e,t){if(!e.isUnmapped)return e.dataType===d.DateTimeOffset?t=t&&new Date(t.getTime()-6e4*t.getTimezoneOffset()):e.dataType.quoteJsonOData&&(t=null!=t?t.toString():t),t}function n(e,t){var n=e.adapter._createChangeRequestInterceptor(e,t),i=[],o=[],s=[],u=e.entityManager,p=u.helper,c=0,l=e.routePrefix;return t.entities.forEach(function(e,t){var y=e.entityAspect;c+=1;var f={headers:{"Content-ID":c,DataServiceVersion:"2.0"}};if(s[c]=e,y.entityState.isAdded())f.requestUri=l+e.entityType.defaultResourceName,f.method="POST",f.data=p.unwrapInstance(e,r),o[c]=y.getKey();else if(y.entityState.isModified())a(f,y,l),f.method="MERGE",f.data=p.unwrapChangedValues(e,u.metadataStore,r);else{if(!y.entityState.isDeleted())return;a(f,y,l),f.method="DELETE"}f=n.getRequest(f,e,t),i.push(f)}),e.contentKeys=s,e.tempKeys=o,n.done(i),{__batchRequests:[{__changeRequests:i}]}}function a(e,t,r){var n,a=t.extraMetadata;null==a?(n=i(t),t.extraMetadata={uriKey:n}):(n=a.uriKey,a.etag&&(e.headers["If-Match"]=a.etag)),e.requestUri=n.indexOf("//")>0?n:r+n}function i(e){var t=e.entity.entityType,r=t.defaultResourceName,n=t.keyProperties,a=r+"(";if(1===n.length)a=a+o(n[0],e)+")";else{var i="";n.forEach(function(t){a=a+i+t.nameOnServer+"="+o(t,e),i=","}),a+=")"}return a}function o(e,t){return e.dataType.fmtOData(t.getPropertyValue(e.name))}function s(e,t){var r=new Error,n=e&&e.response;if(!n)return r.message=e,r.statusText=e,r;if(r.message=n.statusText,r.statusText=n.statusText,r.status=n.statusCode,t&&(r.url=t),r.body=n.body,n.body){var a;try{var i=JSON.parse(n.body);r.body=i,i["odata.error"]&&(i=i["odata.error"]);var o="";do a=i.error||i.innererror,a||(o+=u(i)),a=a||i.internalexception,i=a||i;while(a);o.length>0&&(r.message=o)}catch(s){}}return g._catchNoConnectionError(r),r}function u(e){var t=e.message||"";return("string"==typeof t?t:t.value)+"; "}var c,l=e.core,y=e.MetadataStore,f=e.JsonResultsAdapter,h=e.DataProperty,d=e.DataType,m=e.AutoGeneratedKeyType,v=function(){this.name="OData"},g=v.prototype;g.initialize=function(){c=l.requireLib("OData","Needed to support remote OData services"),c.jsonHandler.recognizeDates=!0};var w=e.AbstractDataServiceAdapter.prototype;g._catchNoConnectionError=w._catchNoConnectionError,g.changeRequestInterceptor=w.changeRequestInterceptor,g._createChangeRequestInterceptor=w._createChangeRequestInterceptor,g.headers={DataServiceVersion:"2.0"},g.getAbsoluteUrl=function(e,t){var r=e.qualifyUrl(""),n=l.stringStartsWith(t,r)?"":r;return window&&r.indexOf("//")<0&&(n=window.location.protocol+"//"+window.location.host+(l.stringStartsWith(r,"/")?"":"/")+n),n+t},g.getRoutePrefix=function(e){var t;"object"==typeof document?(t=document.createElement("a"),t.href=e.serviceName):t=url.parse(e.serviceName);var r=t.pathname;return"/"===r[0]&&(r=r.substr(1)),"/"!==r.substr(-1)&&(r+="/"),r},g.executeQuery=function(r){var n,a=e.Q.defer();if(n=this.relativeUrl===!0?r.getUrl():l.isFunction(this.relativeUrl)?this.relativeUrl(r.dataService,r.getUrl()):this.getAbsoluteUrl(r.dataService,r.getUrl()),r.query.parameters){var i=t(r.query.parameters),o=n.indexOf("?")<0?"?":"&";n=n+o+i}return c.read({requestUri:n,headers:p({},this.headers)},function(e,t){var r;e.__count&&(r=parseInt(e.__count,10));var n;return n=e.results?e.results:e,a.resolve({results:n,inlineCount:r,httpResponse:t})},function(e){return a.reject(s(e,n))}),a.promise},g.fetchMetadata=function(t,r){var n,a=e.Q.defer(),i=r.serviceName;n=this.relativeUrl===!0?r.qualifyUrl("$metadata"):l.isFunction(this.relativeUrl)?this.relativeUrl(r,"$metadata"):this.getAbsoluteUrl(r,"$metadata");var o=p({},this.headers);return o.Accept="application/*; odata.metadata=full",c.read({requestUri:n,headers:o},function(e){if(!e||!e.dataServices){var o=new Error("Metadata query failed for: "+n);return a.reject(o)}var s=e.dataServices;if(!t.hasMetadataFor(i)){try{t.importMetadata(s)}catch(u){return a.reject(new Error("Metadata query failed for "+n+"; Unable to process returned metadata: "+u.message))}t.addDataService(r)}return a.resolve(s)},function(e){var t=s(e,n);return t.message="Metadata query failed for: "+n+"; "+(t.message||""),a.reject(t)},c.metadataHandler),a.promise},g.saveChanges=function(t,r){var a,i=t.adapter=this,o=e.Q.defer();this.relativeUrl===!0?(t.routePrefix=i.getRoutePrefix(t.dataService),a=t.dataService.qualifyUrl("$batch")):l.isFunction(i.relativeUrl)?(t.routePrefix=i.relativeUrl(t.dataService,""),a=t.routePrefix+"$batch"):(t.routePrefix=i.getAbsoluteUrl(t.dataService,""),a=t.routePrefix+"$batch");var u=n(t,r),y=t.tempKeys,f=t.contentKeys;return c.request({headers:p({},this.headers),requestUri:a,method:"POST",data:u},function(e,t){var r=[],n=[],i={entities:r,keyMappings:n};return e.__batchResponses.forEach(function(e){e.__changeResponses.forEach(function(e){var t=e.response||e,i=t.statusCode;if(!i||i>=400)return void o.reject(s(e,a));var u=e.headers["Content-ID"];u||(u=e.headers["Content-Id"]);var p=e.data;if(p){var c=y[u];if(c){var l=c.entityType;if(l.autoGeneratedKeyType!==m.None){var d=c.values[0],v=l.getEntityKeyFromRawEntity(p,h.getRawValueFromServer),g={entityTypeName:l.name,tempValue:d,realValue:v.values[0]};n.push(g)}}r.push(p)}else{var w=f[u];r.push(w)}})}),o.resolve(i)},function(e){return o.reject(s(e,a))},c.batchHandler),o.promise},g.jsonResultsAdapter=new f({name:"OData_default",visitNode:function(e,t,r){var n={};if(null==e)return n;var a=e.__metadata;if(null!=a){var i=y.normalizeTypeName(a.type),o=i&&t.entityManager.metadataStore.getEntityType(i,!0);if(o&&o._mappedPropertiesCount<=Object.keys(e).length-1){n.entityType=o;var s=a.uri||a.id;if(s){var u=new RegExp("^"+t.dataService.serviceName,"i");s=s.replace(u,"")}n.extraMetadata={uriKey:s,etag:a.etag}}}e.results&&(n.node=e.results);var p=r.propertyName;return n.ignore=null!=e.__deferred||"__metadata"===p||"EntityKey"===p&&e.$type&&l.stringStartsWith(e.$type,"System.Data"),n}}),e.config.registerAdapter("dataService",v);var S=function(){this.name="webApiOData"};e.core.extend(S.prototype,g),e.config.registerAdapter("dataService",S);var E=function(){this.name="webApiOData4"};e.core.extend(E.prototype,S.prototype),E.prototype.initialize=function(){var e=l.requireLib("datajs","Needed to support remote OData v4 services");c=e.V4.oData,c.json.jsonHandler.recognizeDates=!0},E.prototype.headers={"OData-Version":"4.0"},e.config.registerAdapter("dataService",E)}),function(e){"object"==typeof se?e(se):"function"==typeof require&&"object"==typeof exports&&"object"==typeof module?e(require("breeze-client")):"function"==typeof define&&define.amd&&define(["breeze-client"],e)}(function(e){var t=e.MetadataStore,r=e.JsonResultsAdapter,n=e.AbstractDataServiceAdapter,a=function(){this.name="webApi"},i=a.prototype=new n;i._prepareSaveBundle=function(t,r){var n=this._createChangeRequestInterceptor(t,r),a=t.entityManager,i=a.metadataStore,o=a.helper;return r.entities=r.entities.map(function(t,r){var a=o.unwrapInstance(t),s=null;t.entityType.autoGeneratedKeyType!==e.AutoGeneratedKeyType.None&&(s={propertyName:t.entityType.keyProperties[0].nameOnServer,autoGeneratedKeyType:t.entityType.autoGeneratedKeyType.name});var u=o.unwrapOriginalValues(t,i);return a.entityAspect={entityTypeName:t.entityType.name,defaultResourceName:t.entityType.defaultResourceName,entityState:t.entityAspect.entityState.name,originalValuesMap:u,autoGeneratedKey:s},a=n.getRequest(a,t,r)}),r.saveOptions={tag:r.saveOptions.tag},n.done(r.entities),r},i._prepareSaveResult=function(e,r){var n=e.dataService.jsonResultsAdapter||this.jsonResultsAdapter,a=n.extractSaveResults(r)||[],i=n.extractKeyMappings(r)||[],o=n.extractDeletedKeys?n.extractDeletedKeys(r)||[]:[];return i.length&&(i=i.map(function(e){if(e.entityTypeName)return e;var r=t.normalizeTypeName(e.EntityTypeName);return{entityTypeName:r,tempValue:e.TempValue,realValue:e.RealValue}})),o.length&&(o=o.map(function(e){if(e.entityTypeName)return e;var r=t.normalizeTypeName(e.EntityTypeName);return{entityTypeName:r,keyValues:e.KeyValue}})),{entities:a,keyMappings:i,deletedKeys:o}},i.jsonResultsAdapter=new r({name:"webApi_default",visitNode:function(e,r,n){if(null==e)return{};var a=t.normalizeTypeName(e.$type),i=a&&r.entityManager.metadataStore._getEntityType(a,!0),o=n.propertyName,s=o&&"$"===o.substr(0,1);return{entityType:i,nodeId:e.$id,nodeRefId:e.$ref,ignore:s}}}),e.config.registerAdapter("dataService",a)}),function(e){"object"==typeof se?e(se):"function"==typeof require&&"object"==typeof exports&&"object"==typeof module?e(require("breeze-client")):"function"==typeof define&&define.amd&&define(["breeze-client"],e)}(function(e){function t(e){var t=e.entityType||e.complexType,r=t._extra,a=r.alreadyWrappedProps||{};t.getProperties().forEach(function(t){var r=t.name;if(!a[r]){var o;o=r in e?i(e,t):n(e,t),null!=o&&Object.defineProperty(e,r,o),a[r]=!0}}),r.alreadyWrappedProps=a}function r(e){var t=o(e),r=Object.getPrototypeOf(e),a=r.entityType||r.complexType;return a.getProperties().forEach(function(t){var a=t.name;if(t.isUnmapped&&!p.getPropertyDescriptor(r,a)){var i=n(r,t);Object.defineProperty(r,a,i)}if(e.hasOwnProperty(a)){var o=e[a];delete e[a],e[a]=o}}),t}function n(e,t){var r=t.name,n=e._pendingBackingStores;n||(n=[],e._pendingBackingStores=n);var i={get:function(){var e=this._backingStore||o(this);return e[r]},set:function(e){var n=this._backingStore||s(this),i=a(n,r);this._$interceptor(t,e,i)},enumerable:!0,configurable:!0};return i.set.rawSet=function(e){var t=this._backingStore||s(this),n=a(t,r);n(e)},i}function a(e,t){return function(){return 0===arguments.length?e[t]:void(e[t]=arguments[0])}}function i(e,t){if(!e.hasOwnProperty(t.name)){var r=Object.getPrototypeOf(e);return i(r,t)}var n=Object.getOwnPropertyDescriptor(e,t.name);if(n.configurable&&!n.value&&n.set){var a=function(e){return function(){if(0===arguments.length)return n.get.bind(e)();var t=n.set,r=t.rawSet||t;return void r.bind(e)(arguments[0])}},o={get:function(){return n.get.bind(this)()},set:function(e){this._$interceptor(t,e,a(this))},enumerable:n.enumerable,configurable:!0};return o.set.rawSet=n.set,o}}function o(e){var t=Object.getPrototypeOf(e);u(t);var r=e._backingStore;return r||(r={},e._backingStore=r),r}function s(e){var t=Object.getPrototypeOf(e),r=t._pendingBackingStores,n=p.arrayFirst(r,function(t){return t.entity===e});if(n)return n.backingStore;var a={};return r.push({entity:e,backingStore:a}),a}function u(e){var t=e._pendingBackingStores;t&&(t.forEach(function(e){e.entity._backingStore=e.backingStore}),t.length=0)}var p=e.core,c=function(){this.name="backingStore"},l=c.prototype;l.initialize=function(){},l.getTrackablePropertyNames=function(e){var t=[];for(var r in e)if("entityType"!==r&&"_$typeName"!==r&&"_pendingSets"!==r&&"_backingStore"!==r){var n=e[r];p.isFunction(n)||t.push(r)}return t},l.initializeEntityPrototype=function(e){e.getProperty=function(e){return this[e]},e.setProperty=function(e,t){return this[e]=t,this},t(e)},l.startTracking=function(t,n){var a=r(t),i=t.entityType||t.complexType;i.getProperties().forEach(function(r){var n=r.name,i=t[n];if(r.isDataProperty)r.isComplexProperty?i=r.isScalar?r.dataType._createInstanceCore(t,r):e.makeComplexArray([],t,r):r.isScalar?void 0===i&&(i=r.defaultValue):i=e.makePrimitiveArray([],t,r);else{if(!r.isNavigationProperty)throw new Error("unknown property: "+n);if(void 0!==i)throw new Error("Cannot assign a navigation property in an entity ctor.: "+n);i=r.isScalar?null:e.makeRelationArray([],t,r)}(r.isSettable||r.isNavigationProperty)&&(a[n]=i)})},e.config.registerAdapter("modelLibrary",c)}),function(e){"object"==typeof se?e(se):"function"==typeof require&&"object"==typeof exports&&"object"==typeof module?e(require("breeze-client")):"function"==typeof define&&define.amd&&define(["breeze-client"],e)}(function(e){function t(e){var t=e.entityType||e.complexType,n={};if(t.getProperties().forEach(function(t){var a=r(e,t.name);a&&(n[t.name]=a)}),!s.isEmpty(n)){var a=t._extra;a.es5Descriptors=n,t._koDummy=o.observable(null)}}function r(e,t){if(!u)return null;if(e.hasOwnProperty(t))return Object.getOwnPropertyDescriptor&&Object.getOwnPropertyDescriptor(e,t);var n=Object.getPrototypeOf(e);return n?r(n,t):null}function n(t,r,n){if(r.isDataProperty)r.isComplexProperty?n=r.isScalar?r.dataType._createInstanceCore(t,r):e.makeComplexArray([],t,r):r.isScalar?void 0===n&&(n=r.defaultValue):n=e.makePrimitiveArray([],t,r);else{if(!r.isNavigationProperty)throw new Error("unknown property: "+r.name);if(void 0!==n)throw new Error("Cannot assign a navigation property in an entity ctor.: "+r.name);n=r.isScalar?null:e.makeRelationArray([],t,r)}return n}function a(e){e._koObj._suppressBreeze=!0}function i(e){var t=e.array._koObj;t._suppressBreeze?t._suppressBreeze=!1:t.valueHasMutated()}var o,s=e.core,u=s.__isES5Supported,p=function(){this.name="ko"},c=p.prototype;c.initialize=function(){o=s.requireLib("ko;knockout","The Knockout library"),o.extenders.intercept=function(e,t){var r,n=t.instance,a=t.property;return r=e.splice?o.computed({read:e}):o.computed({read:e,write:function(t){return n._$interceptor(a,t,e),n}})}},c.getTrackablePropertyNames=function(e){var t=[];for(var n in e)if("entityType"!==n&&"_$typeName"!==n){var a=r(e,n);if(a&&a.get)t.push(n);else{var i=e[n];o.isObservable(i)?t.push(n):s.isFunction(i)||t.push(n)}}return t},c.initializeEntityPrototype=function(e){e.getProperty=function(e){return this[e]()},e.setProperty=function(e,t){return this[e](t),this},u&&t(e)},c.startTracking=function(e,t){var r=e.entityType||e.complexType,s=r._extra.es5Descriptors||{};r.getProperties().sort(function(e,t){var r=e.isUnmapped?1:0,n=t.isUnmapped?1:0;return r-n}).forEach(function(t){var u,p=t.name,c=e[p],l=s[p];if(l){var y=l.get.bind(e);if(l.set){var f=l.set.bind(e),h=function(e){return 0===arguments.length?void y():void f(e)};u=o.computed({read:function(){return r._koDummy(),y()},write:function(n){return e._$interceptor(t,n,h),r._koDummy.valueHasMutated(),e}})}else u=o.computed({read:y,write:function(){}})}else if(o.isObservable(c)){if(t.isNavigationProperty)throw new Error("Cannot assign a navigation property in an entity ctor.: "+p);u=c}else c=n(e,t,c),u=t.isScalar?o.observable(c):o.observableArray(c);if(t.isScalar)if(l)Object.defineProperty(e,p,{enumerable:!0,configurable:!0,writable:!0,value:u});else{var d=u.extend({intercept:{instance:e,property:t}});e[p]=d}else c._koObj=u,u.subscribe(a,null,"beforeChange"),c.arrayChanged.subscribe(i),u.equalityComparer=function(){throw new Error("Collection navigation properties may NOT be set.")},e[p]=u})},e.config.registerAdapter("modelLibrary",p)}),function(e){"object"==typeof se?e(se):"function"==typeof require&&"object"==typeof exports&&"object"==typeof module?e(require("breeze-client")):"function"==typeof define&&define.amd&&define(["breeze-client"],e)}(function(e){var t=e.EntityType,r=function(){this.name="json"},n=r.prototype;n.initialize=function(){},n.buildUri=function(e,r){var n=e._getFromEntityType(r,!1);n||(n=new t(r));var a=e.toJSONExt({entityType:n,toNameOnServer:!0});a.from=void 0,a.queryOptions=void 0;var i=JSON.stringify(a),o=encodeURIComponent(i);return e.resourceName+"?"+o},e.config.registerAdapter("uriBuilder",r)}),function(e){"object"==typeof se?e(se):"function"==typeof require&&"object"==typeof exports&&"object"==typeof module?e(require("breeze-client")):"function"==typeof define&&define.amd&&define(["breeze-client"],e)}(function(e){var t,r=e.EntityType,n=function(){this.name="odata"},a=n.prototype;a.initialize=function(){},a.buildUri=function(e,n){function a(e){if(e)return e.visit({entityType:p},t)}function i(e){if(e){e.validate(p);var t=e.items.map(function(e){return p.clientPropertyPathToServer(e.propertyPath,"/")+(e.isDesc?" desc":"")});return t.join(",")}}function o(e){if(e){e.validate(p);var t=e.propertyPaths.map(function(e){return p.clientPropertyPathToServer(e,"/")}).join(",");return t}}function s(e){if(e){var t=e.propertyPaths.map(function(e){return p.clientPropertyPathToServer(e,"/")}).join(",");return t}}function u(e){var t=[];for(var r in e){var n=e[r];void 0!==n&&(n instanceof Array?n.forEach(function(e){t.push(r+"="+encodeURIComponent(e))}):t.push(r+"="+encodeURIComponent(n)))}return t.length>0?"?"+t.join("&"):""}var p=e._getFromEntityType(n,!1);p||(p=new r(n));var c={};c.$filter=a(e.wherePredicate),c.$orderby=i(e.orderByClause),e.skipCount&&(c.$skip=e.skipCount),null!=e.takeCount&&(c.$top=e.takeCount),c.$expand=s(e.expandClause),c.$select=o(e.selectClause),e.inlineCountEnabled&&(c.$inlinecount="allpages");var l=u(c);return e.resourceName+l},e.Predicate.prototype.toODataFragment=function(e){return this.visit(e,t)},t=function(){function t(e){var t=e.op.key,r=n[t];return r||t}var r={passthruPredicate:function(){return this.value},unaryPredicate:function(e){var r=this.pred.visit(e);return t(this)+" ("+r+")"},binaryPredicate:function(e){var r=this.expr1.visit(e),n=this.expr2.visit(e),a=e.prefix;a&&(r=a+"/"+r);var i=t(this);if("in"===this.op.key){var o=n.map(function(e){return"("+r+" eq "+e+")"}).join(" or ");return o}return this.op.isFunction?"substringof"===i?i+"("+n+","+r+") eq true":i+"("+r+","+n+") eq true":r+" "+i+" "+n},andOrPredicate:function(e){var r=this.preds.map(function(t){var r=t.visit(e);return"("+r+")"}).join(" "+t(this)+" ");return r},anyAllPredicate:function(r){var n=this.expr.visit(r);if(!this.pred.op)return n+"/"+t(this)+"()";var a=r.prefix;a?(n=a+"/"+n,a="x"+(parseInt(a.substring(1))+1)):a="x1";var i=e.core.extend({},r);i.entityType=this.expr.dataType,i.prefix=a;var o=this.pred.visit(i);return n+"/"+t(this)+"("+a+": "+o+")"},litExpr:function(){return Array.isArray(this.value)?this.value.map(function(e){return this.dataType.fmtOData(e)},this):this.dataType.fmtOData(this.value)},propExpr:function(e){var t=e.entityType;return t?t.clientPropertyPathToServer(this.propertyPath,"/"):this.propertyPath},fnExpr:function(e){var t=this.exprs.map(function(t){return t.visit(e)});return this.fnName+"("+t.join(",")+")"}},n={contains:"substringof"};return r}(),e.config.registerAdapter("uriBuilder",n)}),se.config.initializeAdapterInstances({dataService:"webApi",ajax:"jQuery",uriBuilder:"odata"});var nt=N("ko");return nt?se.config.initializeAdapterInstance("modelLibrary","ko"):se.config.initializeAdapterInstance("modelLibrary","backingStore"),se});