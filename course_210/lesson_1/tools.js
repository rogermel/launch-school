function isValueNaN(value) {
  return value !== value;
}

function isValue2NaN(value) {
  return typeof value === 'number' && isNaN(value);
}