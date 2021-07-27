#!/usr/bin/bash
# generate simple webpage

echo """
<!doctype html>
<html lang='en'>
  <head>
    <!-- Required meta tags -->
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC' crossorigin='anonymous'>

    <title>Shiitake mini-project</title>
  </head>
  <body>
  <main>
    <!-- borrowed from https://getbootstrap.com/docs/5.0/components/carousel/ -->
    <div style='margin-left: 5rem; margin-right: 5rem;'>
    <div id='carouselExampleControls' class='carousel slide' data-bs-ride='carousel'>
      <div class='carousel-inner'>
"""

act='active'
for img in `ls -t data/img/`; do
  echo """

        <div class='carousel-item ${act}'>
          <img
            src='data/img/${img}'
            class='d-block w-100'
            alt='...'
          />
        </div>
  """
  act=''
done

echo """
      </div>
      <button class='carousel-control-prev' type='button' data-bs-target='#carouselExampleControls' data-bs-slide='prev'>
        <span class='carousel-control-prev-icon' aria-hidden='true'></span>
        <span class='visually-hidden'>Previous</span>
      </button>
      <button class='carousel-control-next' type='button' data-bs-target='#carouselExampleControls' data-bs-slide='next'>
        <span class='carousel-control-next-icon' aria-hidden='true'></span>
        <span class='visually-hidden'>Next</span>
      </button>
    </div>
    </div>
  </main>
  <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js' integrity='sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM' crossorigin='anonymous'></script>
  </body>
</html>
"""
