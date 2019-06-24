/*
* Copyright (c) {{yearrange}} Alex Angelou ()
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNEs FOR A PARTICULAR PURPOsE.  see the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free software Foundation, Inc., 51 Franklin street, Fifth Floor,
* Boston, MA 02110-1301 UsA
*
* Authored by: Alex Angelou <>
*/

using DataHelper;

namespace Model {
    public class Contact {
        public Gdk.Pixbuf? icon;
        
        // Default properties
        public string name;
        public Date? birthday;
        
        public List<string>? phones;
        public List<string>? emails;
        public List<Address?>? addresses;
        
        public List<string>? notes;
        public List<string>? nicknames;
        public List<string>? websites;

        public Contact (string str) {
            icon = null;
            name = str;
            birthday = null;
            phones = null;
            emails = null;
            addresses = null;
            notes = null;
            nicknames = null;
            websites = null;
        }

    }
}
