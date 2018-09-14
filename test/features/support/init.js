'use strict';

const apickli = require('apickli');
const {defineSupportCode} = require('cucumber');

defineSupportCode(function({Before}) {
    Before(function() {
        this.apickli = new apickli.Apickli('https', 'demo15-test.apigee.net/oauth2');
        this.apickli.addRequestHeader('Cache-Control', 'no-cache');
    });
});
