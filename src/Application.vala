/*
* Copyright (c) {{yearrange}} Alex Angelou ()
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Alex Angelou <>
*/
using Granite;
using Granite.Widgets;
using Gtk;

using View;

namespace Contacts {
    public class Application : Granite.Application {

        public Application () {
            Object(
                application_id: "com.github.aggalex.Contacts", 
                flags: ApplicationFlags.FLAGS_NONE
            );
        }

        protected override void activate () {
            var window = new Gtk.ApplicationWindow (this);
            var main = new Gtk.Grid ();

            var contact_list = new ContactList ();
            window.add (contact_list);

            contact_list.new_contact ("Alex Angelou");
            contact_list.new_contact ("Giannis Kont");

            var headerbar = new Headerbar ();
            window.set_titlebar (headerbar);

            Css.apply ();

            window.title = "Contacts";
            window.set_default_size (900, 640);
            window.add (main);
            window.show_all ();
        }

        public static int main (string[] args) {
            var app = new Contacts.Application ();
            return app.run (args);
        }
    }
}
