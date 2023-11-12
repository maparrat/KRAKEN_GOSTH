const { Given, When, Then } = require('@cucumber/cucumber');
const expect = require('chai').expect;


When('I enter blog {string}', async function (title) {
    let element = await this.driver.$('#ember182');
    return await element.setValue(title);
});

When('I click update', async function() {
    let element = await this.driver.$('#ember179');
    return await element.click();
})

When('I click buttom', async function() {
    let element = await this.driver.$('.gh-editor-feature-image-unsplash');
    return await element.click();
})

When('I click buttom upload  ', async function() {
    let element = await this.driver.$('.gh-editor-feature-image-add-button');
    return await element.click();
})

When('I click image', async function() {
    let element = await this.driver.$('.gh-unsplash-button');
    return await element.click();
})

When('Read {string}', async function (title) {
    let element = await this.driver.$('.gh-article-title is-title');
    return (element == title) ? 'True' : 'False'; ;
});

When('Read {string}', async function (title) {
    let element = await this.driver.$('.gh-article-image');
    return (element) ? 'True' : 'False'; ;
});

When('Not Read {string}', async function (title) {
    let element = await this.driver.$('.gh-article-image');
    return (element) ? 'False' : 'True'; ;
});

When('I enter email {string}', async function (email) {
    let element = await this.driver.$('#identification');
    return await element.setValue(email);
});

When('I enter password {string}', async function (password) {
    let element = await this.driver.$('#password');
    return await element.setValue(password);
});

When('I click Sign in', async function() {
    let element = await this.driver.$('#ember5');
    return await element.click();
});

When('I click members', async function() {
    let element = await this.driver.$('#members_svg__Regular');
    return await element.click();
});

When('I click new member', async function() {
    let element = await this.driver.$('a[data-test-new-member-button="true"]');
    return await element.click();
});

When('I enter new name {string}', async function (password) {
    let element = await this.driver.$('#member-name');
    return await element.setValue(password);
});

When('I enter new email {string}', async function (password) {
    let element = await this.driver.$('#member-email');
    return await element.setValue(password);
});

When('I click save member', async function() {
    let element = await this.driver.$('button[data-test-button="save"]');
    return await element.click();
});

Then('I see new member', async function () {
    let elements = await this.driver.$$('tr[data-test-list="members-list-item"]');
    expect(elements.length).to.equal(7);
  });

When('I click leave', async function() {
    let element = await this.driver.$('button[data-test-leave type="button"]');
    return await element.click();
});
