	document.addEventListener("turbolinks:load", function() {
  $input = $("[data-behavior='autocomplete']")

  var options = {
    getValue: "title",
    url: function(phrase) {
      return "/search.json?q=" + phrase;
    },
    categories: [
      {
        listLocation: "jobs",
        header: "<h5>Jobs</h5>",
      },
      {
        listLocation: "portfolios",
        header: "<h5>Projects</h5>",
      },
      {
        listLocation: "skills",
        header: "<h5>Skills</h5>",
      }
    ],
    list: {
      onChooseEvent: function() {
        var url = $input.getSelectedItemData().url
        console.log(url)
        $input.val("")
        Turbolinks.visit(url)
      }
    }
  }

  $input.easyAutocomplete(options)
});