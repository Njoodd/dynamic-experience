const { isDraft } = require('strapi-utils').contentTypes;

module.exports = {

    // async create(data, { files } = {}) {
    //     const validData = await strapi.entityValidator.validateEntityCreation(
    //         strapi.models.application,
    //         data,
    //         { isDraft: isDraft(data, strapi.models.application) }
    //     );

    //     const entry = await strapi.query('application').create(validData);

    //     if (files) {
    //         // automatically uploads the files based on the entry and the model
    //         await strapi.entityService.uploadFiles(entry, files, {
    //             model: 'application',
    //             // if you are using a plugin's model you will have to add the `source` key (source: 'users-permissions')
    //         });
    //         return this.findOne({ id: entry.id });
    //     }

    //     return entry;
    // },

    // async update(params, data, { files } = {}) {
    //     const existingEntry = await strapi.query('application').findOne(params);

    //     const validData = await strapi.entityValidator.validateEntityUpdate(
    //         strapi.models.application,
    //         data,
    //         { isDraft: isDraft(existingEntry, strapi.models.application) }
    //     );

    //     const entry = await strapi.query('application').update(params, validData);

    //     if (files) {
    //         // automatically uploads the files based on the entry and the model
    //         await strapi.entityService.uploadFiles(entry, files, {
    //             model: 'application',
    //             // if you are using a plugin's model you will have to add the `source` key (source: 'users-permissions')
    //         });
    //         return this.findOne({ id: entry.id });
    //     }

    //     return entry;
    // },

    find(params, populate) {

        // const result = await strapi.query('application').model((qb) => {
        //     qb.where('parent_id', !null)
        // })
        //     .fetchAll()
        return strapi.query('application').find(params, [

            // ComponentsList > titleComponent - bodyComponent > components > components > ...
            
            'data',
            'config',
            'themes',

            // branch: titleBar
            // level #1
            'pages.titleBar.style',
            // branch: titleBar
            // level #1.1
            'pages.titleBar.components.style',
            'pages.titleBar.components.onClick',
            'pages.titleBar.components.onSuccess',
            'pages.titleBar.components.onFail',
            // branch: titleBar
            // level #1.1.1
            'pages.titleBar.components.components.style',
            'pages.titleBar.components.components.onClick',
            'pages.titleBar.components.components.onSuccess',
            'pages.titleBar.components.components.onFail',
            // branch: titleBar
            // level #1.1.1.1
            'pages.titleBar.components.components.components.style',
            'pages.titleBar.components.components.components.onClick',
            'pages.titleBar.components.components.components.onSuccess',
            'pages.titleBar.components.components.components.onFail',
            // branch: titleBar
            // level #1.1.1.1.1
            'pages.titleBar.components.components.components.components.style',
            'pages.titleBar.components.components.components.components.onClick',
            'pages.titleBar.components.components.components.components.onSuccess',
            'pages.titleBar.components.components.components.components.onFail',
            // branch: titleBar
            // level #1.1.1.1.1.1
            'pages.titleBar.components.components.components.components.components.style',
            'pages.titleBar.components.components.components.components.components.onClick',
            'pages.titleBar.components.components.components.components.components.onSuccess',
            'pages.titleBar.components.components.components.components.components.onFail',
            
            // branch: body
            // level #2
            'pages.body.style',
            // branch: body > components
            // level #2.1
            'pages.body.components.style',
            'pages.body.components.onClick',
            'pages.body.components.onSuccess',
            // branch: body > components > titleComponent
            // level #2.1.1
            'pages.body.components.titleComponent.style',
            'pages.body.components.titleComponent.onClick',
            'pages.body.components.titleComponent.onSuccess',
            'pages.body.components.titleComponent.onFail',
            // branch: components
            // level #2.1.1
            'pages.body.components.titleComponent.components.style',
            'pages.body.components.titleComponent.components.onClick',
            'pages.body.components.titleComponent.components.onSuccess',
            'pages.body.components.titleComponent.components.onFail',
            // branch: titleComponent
            // level #2.1.3.1
            'pages.body.components.titleComponent.components.components.style',
            'pages.body.components.titleComponent.components.components.onClick',
            'pages.body.components.titleComponent.components.components.onSuccess',
            'pages.body.components.titleComponent.components.components.onFail',
            // branch: titleComponent
            // level #2.1.3.1.1
            'pages.body.components.titleComponent.components.components.components.style',
            'pages.body.components.titleComponent.components.components.components.onClick',
            'pages.body.components.titleComponent.components.components.components.onSuccess',
            'pages.body.components.titleComponent.components.components.components.onFail',
            'pages.body.components.titleComponent.components.components.components.components',
            // branch: body > components > bottomComponent
            // level #2.2.2
            'pages.body.components.bottomComponent.style',
            'pages.body.components.bottomComponent.onClick',
            'pages.body.components.bottomComponent.onSuccess',
            'pages.body.components.bottomComponent.onFail',
            // branch: components
            // level #2.2.3
            'pages.body.components.bottomComponent.components.style',
            'pages.body.components.bottomComponent.components.onClick',
            'pages.body.components.bottomComponent.components.onSuccess',
            'pages.body.components.bottomComponent.components.onFail',
            // branch: components
            // level #2.2.3.3
            'pages.body.components.bottomComponent.components.components.style',
            'pages.body.components.bottomComponent.components.components.onClick',
            'pages.body.components.bottomComponent.components.components.onSuccess',
            'pages.body.components.bottomComponent.components.components.onFail',
            // branch: components
            // level #2.2.3.3.3
            'pages.body.components.bottomComponent.components.components.components.style',
            'pages.body.components.bottomComponent.components.components.components.onClick',
            'pages.body.components.bottomComponent.components.components.components.onSuccess',
            'pages.body.components.bottomComponent.components.components.components.onFail',
            'pages.body.components.bottomComponent.components.components.components.components',
            // branch: bottom > components > components
            // level #2.3
            'pages.body.components.components.style',
            'pages.body.components.components.onClick',
            'pages.body.components.components.onSuccess',
            'pages.body.components.components.onFail',
            // branch: titleComponent
            // level #2.3.1
            'pages.body.components.components.titleComponent.style',
            'pages.body.components.components.titleComponent.onClick',
            'pages.body.components.components.titleComponent.onSuccess',
            'pages.body.components.components.titleComponent.onFail',
            // branch: components
            // level #2.3.1.3
            'pages.body.components.components.titleComponent.components.style',
            'pages.body.components.components.titleComponent.components.onClick',
            'pages.body.components.components.titleComponent.components.onSuccess',
            'pages.body.components.components.titleComponent.components.onFail',
            // branch: components
            // level #2.3.1.3.3
            'pages.body.components.components.titleComponent.components.components.style',
            'pages.body.components.components.titleComponent.components.components.onClick',
            'pages.body.components.components.titleComponent.components.components.onSuccess',
            'pages.body.components.components.titleComponent.components.components.onFail',
            'pages.body.components.components.titleComponent.components.components.components',
       
            // branch: bottomComponent
            // level #2.3.2
            'pages.body.components.components.bottomComponent.style',
            'pages.body.components.components.bottomComponent.onClick',
            'pages.body.components.components.bottomComponent.onSuccess',
            'pages.body.components.components.bottomComponent.onFail',
            // branch: components
            // level #2.3.2.3
            'pages.body.components.components.bottomComponent.components.style',
            'pages.body.components.components.bottomComponent.components.onClick',
            'pages.body.components.components.bottomComponent.components.onSuccess',
            'pages.body.components.components.bottomComponent.components.onFail',
            // branch: components
            // level #2.3.2.3.3
            'pages.body.components.components.bottomComponent.components.components.style',
            'pages.body.components.components.bottomComponent.components.components.onClick',
            'pages.body.components.components.bottomComponent.components.components.onSuccess',
            'pages.body.components.components.bottomComponent.components.components.onFail',
            'pages.body.components.components.bottomComponent.components.components.components',
            // branch: components
            // level #2.3.3
            'pages.body.components.components.components.style',
            'pages.body.components.components.components.onClick',
            'pages.body.components.components.components.onSuccess',
            'pages.body.components.components.components.onFail',
            // branch: titleComponent
            // level #2.3.3.1
            'pages.body.components.components.components.titleComponent.style',
            'pages.body.components.components.components.titleComponent.onClick',
            'pages.body.components.components.components.titleComponent.onSuccess',
            'pages.body.components.components.components.titleComponent.onFail',
            // branch: components
            // level #2.3.3.1.3
            'pages.body.components.components.components.titleComponent.components.style',
            'pages.body.components.components.components.titleComponent.components.onClick',
            'pages.body.components.components.components.titleComponent.components.onSuccess',
            'pages.body.components.components.components.titleComponent.components.onFail',
            'pages.body.components.components.components.titleComponent.components.components',
            // branch: bottomComponent
            // level #2.3.3.2
            'pages.body.components.components.components.bottomComponent.style',
            'pages.body.components.components.components.bottomComponent.onClick',
            'pages.body.components.components.components.bottomComponent.onSuccess',
            'pages.body.components.components.components.bottomComponent.onFail',
            // branch: components
            // level #2.3.3.2.3
            'pages.body.components.components.components.bottomComponent.components.style',
            'pages.body.components.components.components.bottomComponent.components.onClick',
            'pages.body.components.components.components.bottomComponent.components.onSuccess',
            'pages.body.components.components.components.bottomComponent.components.onFail',
            'pages.body.components.components.components.bottomComponent.components.components',
            // branch: components
            // level #2.3.3.3
            'pages.body.components.components.components.components.style',
            'pages.body.components.components.components.components.onClick',
            'pages.body.components.components.components.components.onSuccess',
            'pages.body.components.components.components.components.onFail',
            // branch: titleComponent
            // level #2.3.3.3.1
            'pages.body.components.components.components.components.titleComponent.style',
            'pages.body.components.components.components.components.titleComponent.onClick',
            'pages.body.components.components.components.components.titleComponent.onSuccess',
            'pages.body.components.components.components.components.titleComponent.onFail',
            'pages.body.components.components.components.components.titleComponent.components',
            // branch: bottomComponent
            // level #2.3.3.3.2
            'pages.body.components.components.components.components.bottomComponent.style',
            'pages.body.components.components.components.components.bottomComponent.onClick',
            'pages.body.components.components.components.components.bottomComponent.onSuccess',
            'pages.body.components.components.components.components.bottomComponent.onFail',
            'pages.body.components.components.components.components.bottomComponent.components',
            // branch: components
            // level #2.3.3.3.3
            'pages.body.components.components.components.components.components.style',
            'pages.body.components.components.components.components.components.onClick',
            'pages.body.components.components.components.components.components.onSuccess',
            'pages.body.components.components.components.components.components.onFail',
            'pages.body.components.components.components.components.components.titleComponent',
            'pages.body.components.components.components.components.components.bottomComponent',
            'pages.body.components.components.components.components.components.components',
            'pages.body.components.components.components.components.components.componentsList',
            'pages.body.components.components.components.components.components.componentsList.titleComponent',
            'pages.body.components.components.components.components.components.componentsList.bodyComponent',
            'pages.body.components.components.components.components.components.successComponents',
            'pages.body.components.components.components.components.components.failComponents',
            // branch: componentsList
            // level #2.3.3.3.4
            'pages.body.components.components.components.components.componentsList.titleComponent.style',
            'pages.body.components.components.components.components.componentsList.titleComponent.onClick',
            'pages.body.components.components.components.components.componentsList.titleComponent.onSuccess',
            'pages.body.components.components.components.components.componentsList.titleComponent.onFail',
            'pages.body.components.components.components.components.componentsList.titleComponent.components',
            'pages.body.components.components.components.components.componentsList.bodyComponent.style',
            'pages.body.components.components.components.components.componentsList.bodyComponent.onClick',
            'pages.body.components.components.components.components.componentsList.bodyComponent.onSuccess',
            'pages.body.components.components.components.components.componentsList.bodyComponent.onFail',
            'pages.body.components.components.components.components.componentsList.bodyComponent.components',
            // branch: successComponents
            // level #2.3.3.3.5
            'pages.body.components.components.components.components.successComponents.style',
            'pages.body.components.components.components.components.successComponents.onClick',
            'pages.body.components.components.components.components.successComponents.onSuccess',
            'pages.body.components.components.components.components.successComponents.onFail',
            'pages.body.components.components.components.components.successComponents.components',
            // branch: failComponents
            // level #2.3.3.3.6
            'pages.body.components.components.components.components.failComponents.style',
            'pages.body.components.components.components.components.failComponents.onClick',
            'pages.body.components.components.components.components.failComponents.onSuccess',
            'pages.body.components.components.components.components.failComponents.onFail',
            'pages.body.components.components.components.components.failComponents.components',
            // branch: componentsList
            // level #2.3.3.4
            'pages.body.components.components.components.componentsList.titleComponent.style',
            'pages.body.components.components.components.componentsList.titleComponent.onClick',
            'pages.body.components.components.components.componentsList.titleComponent.onSuccess',
            'pages.body.components.components.components.componentsList.titleComponent.onFail',
            'pages.body.components.components.components.componentsList.titleComponent.components',
            'pages.body.components.components.components.componentsList.bodyComponent.style',
            'pages.body.components.components.components.componentsList.bodyComponent.onClick',
            'pages.body.components.components.components.componentsList.bodyComponent.onSuccess',
            'pages.body.components.components.components.componentsList.bodyComponent.onFail',
            'pages.body.components.components.components.componentsList.bodyComponent.components',
            // branch: successComponents
            // level #2.3.3.5
            'pages.body.components.components.components.successComponents.style',
            'pages.body.components.components.components.successComponents.onClick',
            'pages.body.components.components.components.successComponents.onSuccess',
            'pages.body.components.components.components.successComponents.onFail',
            // branch: components
            // level #2.3.3.5.3
            'pages.body.components.components.components.successComponents.components.style',
            'pages.body.components.components.components.successComponents.components.onClick',
            'pages.body.components.components.components.successComponents.components.onSuccess',
            'pages.body.components.components.components.successComponents.components.onFail',
            'pages.body.components.components.components.successComponents.components.components',
            // branch: failComponents
            // level #2.3.3.6
            'pages.body.components.components.components.failComponents.style',
            'pages.body.components.components.components.failComponents.onClick',
            'pages.body.components.components.components.failComponents.onSuccess',
            'pages.body.components.components.components.failComponents.onFail',
            // branch: failComponents
            // level #2.3.3.6
            'pages.body.components.components.components.failComponents.components.style',
            'pages.body.components.components.components.failComponents.components.onClick',
            'pages.body.components.components.components.failComponents.components.onSuccess',
            'pages.body.components.components.components.failComponents.components.onFail',
            // branch: componentsList
            // level #2.3.4
            'pages.body.components.components.componentsList.titleComponent.style',
            'pages.body.components.components.componentsList.titleComponent.onClick',
            'pages.body.components.components.componentsList.titleComponent.onSuccess',
            'pages.body.components.components.componentsList.titleComponent.onFail',
            'pages.body.components.components.componentsList.titleComponent.components',
            'pages.body.components.components.componentsList.bodyComponent.style',
            'pages.body.components.components.componentsList.bodyComponent.onClick',
            'pages.body.components.components.componentsList.bodyComponent.onSuccess',
            'pages.body.components.components.componentsList.bodyComponent.onFail',
            'pages.body.components.components.componentsList.bodyComponent.components',
            // branch: successComponents
            // level #2.3.5
            'pages.body.components.components.successComponents.style',
            'pages.body.components.components.successComponents.onClick',
            'pages.body.components.components.successComponents.onSuccess',
            'pages.body.components.components.successComponents.onFail',
            // branch: components
            // level #2.3.5.3
            'pages.body.components.components.successComponents.components.style',
            'pages.body.components.components.successComponents.components.onClick',
            'pages.body.components.components.successComponents.components.onSuccess',
            'pages.body.components.components.successComponents.components.onFail',
            // branch: components
            // level #2.3.5.3.3
            'pages.body.components.components.successComponents.components.components.style',
            'pages.body.components.components.successComponents.components.components.onClick',
            'pages.body.components.components.successComponents.components.components.onSuccess',
            'pages.body.components.components.successComponents.components.components.onFail',
            'pages.body.components.components.successComponents.components.components.components',
            // branch: failComponents
            // level #2.3.6
            'pages.body.components.components.failComponents.style',
            'pages.body.components.components.failComponents.onClick',
            'pages.body.components.components.failComponents.onSuccess',
            'pages.body.components.components.failComponents.onFail',
            // branch: components
            // level #2.3.6.3
            'pages.body.components.components.failComponents.components.style',
            'pages.body.components.components.failComponents.components.onClick',
            'pages.body.components.components.failComponents.components.onSuccess',
            'pages.body.components.components.failComponents.components.onFail',
            // branch: components
            // level #2.3.6.3.3
            'pages.body.components.components.failComponents.components.components.style',
            'pages.body.components.components.failComponents.components.components.onClick',
            'pages.body.components.components.failComponents.components.components.onSuccess',
            'pages.body.components.components.failComponents.components.components.onFail',
            'pages.body.components.components.failComponents.components.components.components',

            // branch: componentsList
            // level #2.3.4
            'pages.body.components.componentsList.titleComponent.style',
            'pages.body.components.componentsList.titleComponent.onClick',
            'pages.body.components.componentsList.titleComponent.onSuccess',
            'pages.body.components.componentsList.titleComponent.onFail',
            'pages.body.components.componentsList.titleComponent.components',
            'pages.body.components.componentsList.bodyComponent.style',
            'pages.body.components.componentsList.bodyComponent.onClick',
            'pages.body.components.componentsList.bodyComponent.onSuccess',
            'pages.body.components.componentsList.bodyComponent.onFail',
            'pages.body.components.componentsList.bodyComponent.components',

            // branch: bottom > components > successComponents
            // level #2.5
            'pages.body.components.successComponents.style',
            'pages.body.components.successComponents.onClick',
            'pages.body.components.successComponents.onSuccess',
            'pages.body.components.successComponents.onFail',
            // branch: components
            // level #2.5.3
            'pages.body.components.successComponents.components.style',
            'pages.body.components.successComponents.components.onClick',
            'pages.body.components.successComponents.components.onSuccess',
            'pages.body.components.successComponents.components.onFail',
            // branch: components
            // level #2.5.3.3
            'pages.body.components.successComponents.components.components.style',
            'pages.body.components.successComponents.components.components.onClick',
            'pages.body.components.successComponents.components.components.onSuccess',
            'pages.body.components.successComponents.components.components.onFail',
            // branch: components
            // level #2.5.3.3.3
            'pages.body.components.successComponents.components.components.components.style',
            'pages.body.components.successComponents.components.components.components.onClick',
            'pages.body.components.successComponents.components.components.components.onSuccess',
            'pages.body.components.successComponents.components.components.components.onFail',
            'pages.body.components.successComponents.components.components.components.components',

            // branch: bottom > components > failComponents
            // level #2.6
            'pages.body.components.failComponents.style',
            'pages.body.components.failComponents.onClick',
            'pages.body.components.failComponents.onSuccess',
            'pages.body.components.failComponents.onFail',
            // branch: components
            // level #2.6.3
            'pages.body.components.failComponents.components.style',
            'pages.body.components.failComponents.components.onClick',
            'pages.body.components.failComponents.components.onSuccess',
            'pages.body.components.failComponents.components.onFail',
            // branch: components
            // level #2.6.3.3
            'pages.body.components.failComponents.components.components.style',
            'pages.body.components.failComponents.components.components.onClick',
            'pages.body.components.failComponents.components.components.onSuccess',
            'pages.body.components.failComponents.components.components.onFail',
            // branch: components
            // level #2.6.3.3.3
            'pages.body.components.failComponents.components.components.components.style',
            'pages.body.components.failComponents.components.components.components.onClick',
            'pages.body.components.failComponents.components.components.components.onSuccess',
            'pages.body.components.failComponents.components.components.components.onFail',
            'pages.body.components.failComponents.components.components.components.components',

                // branch: body > bottom
                // level #2.2
            'pages.body.bottom.style',
            'pages.body.bottom.onFail',
            'pages.body.bottom.onClick',
            'pages.body.bottom.onSuccess',
            'pages.body.bottom.onFail',
            // branch: body > bottom > components
            // level #2.2
            'pages.body.bottom.components.style',
            'pages.body.bottom.components.onClick',
            'pages.body.bottom.components.onSuccess',
            'pages.body.bottom.components.onFail',
            // branch: components
            // level #2.2.3
            'pages.body.bottom.components.components.style',
            'pages.body.bottom.components.components.onClick',
            'pages.body.bottom.components.components.onSuccess',
            'pages.body.bottom.components.components.onFail',
            // branch: components
            // level #2.2.3.3
            'pages.body.bottom.components.components.components.style',
            'pages.body.bottom.components.components.components.onClick',
            'pages.body.bottom.components.components.components.onSuccess',
            'pages.body.bottom.components.components.components.onFail',
            // branch: components
            // level #2.2.3.3.3
            'pages.body.bottom.components.components.components.components.style',
            'pages.body.bottom.components.components.components.components.onClick',
            'pages.body.bottom.components.components.components.components.onSuccess',
            'pages.body.bottom.components.components.components.components.onFail',
            'pages.body.bottom.components.components.components.components.components',

            // branch: bottom
            // level #1
            'pages.bottom.style',
            'pages.bottom.items',
            'pages.bottom.items.action',
        ]);
    },

    findOne(params, populate) {
        return strapi.query('application').findOne(params, [


        ]);

    },
};