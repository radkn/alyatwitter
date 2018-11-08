<#import "parts/common.ftl" as c>

<@c.page>
 <div>Список сообщений</div>
  <div class="form-row">
      <div class="form-group col-md-6">
          <form class="form-inline" method="get" action="/main">
              <input class="form-control mr-2" type="text" name="filter" value="${filter!}" placeholder="Search by tag">
              <button class="btn btn-primary" type="submit">Find</button>
          </form>
      </div>
  </div>

<a class="btn btn-primary" data-toggle="collapse" href="#messageWriter" role="button" aria-expanded="false" aria-controls="messageWriter">
    Add new Message
</a>
    <div class="collapse" id="messageWriter">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <div class="form-group">
                    <input type="text" class="form-control mr-2" name="text" placeholder="Введите сообщение"/>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control mr-2" name="tag" placeholder="Тэг"/>
                </div>'
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" id="customFile" name="file"/>
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Добавить</button>
                </div>
            </form>
        </div>
    </div>

    <div class="card-deck">
        <#list messages as message>
            <div class="col-sm-4">
                <div class="card m-2 text-primary border-primary">
                    <div class="card-header"><i >${message.tag}</i></div>
                    <div>
                        <#if message.filename??>
                            <img class="card-img-top" src="/img/${message.filename}">
                        </#if>
                    </div>
                    <div>
                        <span class="card-text ml-3">${message.text}</span>
                    </div>
                    <div class="card-footer text-muted text-right">
                        ${message.authorName}
                    </div>
                </div>
            </div>
        <#else >

        No Message
        </#list>
    </div>
</@c.page>