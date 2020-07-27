const upper_case = str => {
  regexp = /^[A-Z]/;
  if (str.class === String) {
    if (regexp.test(str)) {
      console.log('First letter is uppercase');
    } else if (str.length === 0) {
      console.log('String Empty');
    } else {
      console.log('First letter is not uppercase');
    }
  }
  else {
    console.log('Is not a string');
  }
}