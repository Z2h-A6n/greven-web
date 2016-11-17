# Website development
Some guidelines and resources for web development in general and this site in particular.

## Using `git` and `git-lfs`
Since this repo uses `git-lfs` to manage it's large files (i.e. images), you need to use `git` with `git-lfs` to clone or download the repo.
  * See [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for instructions on installing `git`.
  * See [here](https://try.github.io) for a pretty good tutorial on how to use `git`. (Takes about 15 minutes.)
  * See [here](https://git-lfs.github.com/) for instructions on installing `git-lfs`. Essentially:
    * Download the (zipped) software package.
	* Unzip the package? (I don't remember if this is necessary).
	* Run `git lfs install` from the command line.
	* __Stop.__ The remainder of the instructions just need to be done once for the repo, and they have already been done.

## Important notes
In order to keep things organized, always follow these rules unless it's impossible to do otherwise.

In general:
  * Use tab characters for indentation at the beginning of a line. If you want to align some text that's not at the beginning of the line, use spaces.
    * In other words, there should never be space characters at the beginning of a line, and there should never be tab characters except at the beginning of a line.
  * Keep the code organized.
    * This is mostly necessary in HTML in order to make the page display correctly, but for CSS this means you should try to keep related code together. (Also consider putting comments at the beginning of big code blocks.)

### Web development
  * Use good coding style.
    * Use comments to make notes in the code
    * Use indentation to make the code structure clear
  * Follow HTML/CSS coventions
    * HTML should be used for all content, and content only.
    * CSS should be used for styling and presentation and only for styling and presentation.
    * HTML and CSS should be in separate files to the greatest practical extent.
  * When possible, write code that is compatible with the widest range of browsers. This may mean not using the latest and greatest features of HTML5 and CSS3.
    * Also try to write your code so that it looks good on a small screen (e.g smartphones). You can test this by making your browser window small.
    * If you are writing code that will probably fail on old/lame browsers, try to make it fail gracefully (e.g. if the slideshow doesn't work, display the first picture instead).
  * Don't make things more complicated than the should be. Just because we can make a fancy website
  feature with JavaScript or PHP doesn't mean we should.

### Web design
  * I don't know anything about web design, but it's probably a good idea to look up some of the
  basics (and add some guidelines here).

### Git and GitHub use
  * Keep commits small. If you're planning to do a lot of unrelated things, consider making separate
  commits.
  * Use meaningful and short commit messages
  * If you are going to work on a feature or bugfix that will take a long time, consider forking the
  repo.

## Guidelines
Some guidelines. TODO: Write some guidelines.

## Resources
### UMN website resources
  * [UMN Branding Information](https://www.ur.umn.edu/brand)
    * [UMN Header and Footer Builder](https://www.ur.umn.edu/brand/template-builder)
    * [UMN Reccomended Colors (PDF)](https://ur.umn.edu/brand/assets/pdf/secondary_colors_rgb.pdf)

### General web development resources
  * [HTML Dog](http://htmldog.com) has some good tutorials and reference information for HTML and CSS

### Example websites
In no particular order. (If your website is listed here and don't like it, send someone in the group
an email and it will probably find its way to the relevant people.)

#### Research group websites
  * [The Lorenz Group](http://web.engr.illinois.edu/~vlorenz) at UIUC
  * [Stanford Applied Physics](https://web.stanford.edu/dept/app-physics/cgi-bin)
  * [The Hsieh Group](http://hsiehlab.caltech.edu) at Caltech

#### Research center (and other) websites
  * [Institute for Quantum Matter](http://iqm.jhu.edu) at John's Hopkins and Princeton
  * [Quantum Matter Institute](http://qmi.ubc.ca) at UBC
  * [Stanford Institute for Materials and Energy Sciences](http://simes.stanford.edu) at Stanford and SLAC
  * [Science Philanthropy Alliance](http://www.sciencephilanthropyalliance.org)
