use std::fmt;
use std::fmt::{Formatter};

#[derive(PartialEq, Debug)]
pub struct Clock {
    minutes: i32
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Self { minutes: ((hours * 60) + minutes).rem_euclid(24*60) }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Self::new(0, self.minutes + minutes)
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        let adjusted_hours = self.minutes.div_euclid(60).rem_euclid(24);
        let adjusted_minutes = self.minutes.rem_euclid(60);
        write!(f, "{:02}:{:02}", adjusted_hours, adjusted_minutes)
    }
}