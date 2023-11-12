const { Given, When, Then } = require('@cucumber/cucumber');

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