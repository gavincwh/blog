+++
title = "Copy React props to your clipboard in Google Chrome"
date = "2018-07-14T12:26:27-04:00"
caption = "[copy](https://thenounproject.com/term/copy/1519351) by Bambaleq / [the Noun Project](https://thenounproject.com)"
imageAltText = "Two rounded squares which overlap to signify copying to your clipboard"
description = "Learn how to copy React props to your clipboard using Google Chrome and the React Developer Tools."
tags = ["Today I Learned", "React", "Dev Tools"]
categories = ["Article"]
+++

While working on a React project today, I was looking to copy a property that was passed down to a component. After searching around, I found out it's surprisingly easy.

<!--more-->

1. Open up the [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en) tab within the Chrome inspector. ![Step one, selecting the React tab within the Google Chrome developer tools](./step1.png)
1. Select the component or element which contains the property you want to copy. ![Step two and three, selecting a component and then right clicking specific indicator](./step23.png)
1. Right-click the `{…}` and select **Store as global variable** from the menu.
1. Navigate to the console tab. ![Step four and five, navigating to the console tab and then taking notice of a new variable.](./step45.png)
1. You will notice a global variable was added with a naming convention similar to `$tmp` or `temp1`.
1. Copy the value to your clipboard by typing `copy($tmp)` into the console. ![Step 6, copying the value to your clipboard](./step6.png)

What’s great about this trick is almost any value which has the `{…}` beside it within the Chrome inspector can be set as a global variable. Therefore this method is not limited to the React Developer Tools.