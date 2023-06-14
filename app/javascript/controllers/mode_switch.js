function getCookie(cname) {
  const name = cname + '=';
  const decoded = decodeURIComponent(document.cookie);
  const split = decoded.split(';');
  const relevantCookie = split.find((cookie) => cookie.indexOf(`${cname}=`) === 0);
  if (relevantCookie) {
    return relevantCookie.split('=')[1];
  }
  return null;
}

function toggle(on) {
  if (on) {
    document.documentElement.classList.add('dark');
  } else {
    document.documentElement.classList.remove('dark');
  }
}

function save(on) {
  document.cookie = `dark_theme=${on.toString()}; max-age=31536000; SameSite=None; Secure`;
}

function load() {
  return getCookie('dark_theme') === 'true';
}

function onChange(checkbox) {
  const value = checkbox.checked;
  toggle(value);
  save(value);
}

const initialValue = load();
toggle(initialValue);
document.querySelector('#darkTheme').checked = initialValue;
