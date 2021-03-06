layout 'layout/main.tpl', true,
        projects: projects,
        bodyContents: contents {

            div(class:"sitemap"){
                section(class:"wrap"){
					ul {
						published_content.each {content ->
							li {
								a (href:"${config.site_contextPath}${content.uri}") {
									yield content.title
								}
							}
							newLine()
						}
					}
                }
            }
        }
