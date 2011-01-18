/* bamf.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "", lower_case_cprefix = "bamf_")]
namespace bamf {
	[CCode (type_check_function = "BAMF_IS_APPLICATION", cheader_filename = "libbamf/libbamf.h")]
	public class BamfApplication : bamf.BamfView {
		[CCode (has_construct_function = false)]
		protected BamfApplication ();
		[CCode (cname = "bamf_application_get_application_type")]
		public static unowned string get_application_type (bamf.BamfApplication application);
		[CCode (cname = "bamf_application_get_desktop_file")]
		public static unowned string get_desktop_file (bamf.BamfApplication application);
		[CCode (cname = "bamf_application_get_show_menu_stubs")]
		public static bool get_show_menu_stubs (bamf.BamfApplication application);
		[CCode (cname = "bamf_application_get_windows")]
		public static unowned GLib.List get_windows (bamf.BamfApplication application);
		[CCode (cname = "bamf_application_get_xids")]
		public static unowned GLib.Array get_xids (bamf.BamfApplication application);
		public virtual signal void window_added (bamf.BamfView p0);
		public virtual signal void window_removed (bamf.BamfView p0);
	}
	[CCode (type_check_function = "BAMF_IS_CONTROL", cheader_filename = "libbamf/libbamf.h")]
	public class BamfControl : GLib.Object {
		[CCode (has_construct_function = false)]
		protected BamfControl ();
		[CCode (cname = "bamf_control_get_default")]
		public static unowned bamf.BamfControl get_default ();
		[CCode (cname = "bamf_control_insert_desktop_file")]
		public static void insert_desktop_file (bamf.BamfControl control, string desktop_file);
		[CCode (cname = "bamf_control_register_application_for_pid")]
		public static void register_application_for_pid (bamf.BamfControl control, string application, int32 pid);
		[CCode (cname = "bamf_control_register_tab_provider")]
		public static void register_tab_provider (bamf.BamfControl control, string path);
		[CCode (cname = "bamf_control_set_approver_behavior")]
		public static void set_approver_behavior (bamf.BamfControl control, int32 behavior);
	}
	[CCode (type_check_function = "BAMF_IS_INDICATOR", cheader_filename = "libbamf/libbamf.h")]
	public class BamfIndicator : bamf.BamfView {
		[CCode (has_construct_function = false)]
		protected BamfIndicator ();
		[CCode (cname = "bamf_indicator_get_dbus_menu_path")]
		public unowned string get_dbus_menu_path ();
		[CCode (cname = "bamf_indicator_get_remote_address")]
		public unowned string get_remote_address ();
		[CCode (cname = "bamf_indicator_get_remote_path")]
		public unowned string get_remote_path ();
	}
	[CCode (type_check_function = "BAMF_IS_MATCHER", cheader_filename = "libbamf/libbamf.h")]
	public class BamfMatcher : GLib.Object {
		[CCode (has_construct_function = false)]
		protected BamfMatcher ();
		[CCode (cname = "bamf_matcher_application_is_running")]
		public static bool application_is_running (bamf.BamfMatcher matcher, string application);
		[CCode (cname = "bamf_matcher_get_active_application")]
		public static unowned bamf.BamfApplication get_active_application (bamf.BamfMatcher matcher);
		[CCode (cname = "bamf_matcher_get_active_window")]
		public static unowned bamf.BamfWindow get_active_window (bamf.BamfMatcher matcher);
		[CCode (cname = "bamf_matcher_get_application_for_window")]
		public static unowned bamf.BamfApplication get_application_for_window (bamf.BamfMatcher matcher, bamf.BamfWindow window);
		[CCode (cname = "bamf_matcher_get_application_for_xid")]
		public static unowned bamf.BamfApplication get_application_for_xid (bamf.BamfMatcher matcher, uint32 xid);
		[CCode (cname = "bamf_matcher_get_applications")]
		public static unowned GLib.List get_applications (bamf.BamfMatcher matcher);
		[CCode (cname = "bamf_matcher_get_default")]
		public static unowned bamf.BamfMatcher get_default ();
		[CCode (cname = "bamf_matcher_get_running_applications")]
		public static unowned GLib.List get_running_applications (bamf.BamfMatcher matcher);
		[CCode (cname = "bamf_matcher_get_tabs")]
		public static unowned GLib.List get_tabs (bamf.BamfMatcher matcher);
		[CCode (cname = "bamf_matcher_get_windows")]
		public static unowned GLib.List get_windows (bamf.BamfMatcher matcher);
		[CCode (cname = "bamf_matcher_get_xids_for_application")]
		public static unowned GLib.Array get_xids_for_application (bamf.BamfMatcher matcher, string application);
		[CCode (cname = "bamf_matcher_register_favorites")]
		public static void register_favorites (bamf.BamfMatcher matcher, string favorites);
		public virtual signal void active_application_changed (GLib.Object p0, GLib.Object p1);
		public virtual signal void active_window_changed (GLib.Object p0, GLib.Object p1);
		public virtual signal void view_closed (GLib.Object p0);
		public virtual signal void view_opened (GLib.Object p0);
	}
	[CCode (type_check_function = "BAMF_IS_TAB_SOURCE", cheader_filename = "libbamf/libbamf.h")]
	public class BamfTabSource : GLib.Object {
		[CCode (has_construct_function = false)]
		protected BamfTabSource ();
		[CCode (cname = "bamf_tab_source_get_tab_ids")]
		public static unowned string get_tab_ids (bamf.BamfTabSource source);
		[CCode (cname = "bamf_tab_source_get_tab_preview")]
		public static unowned GLib.Array get_tab_preview (bamf.BamfTabSource source, string tab_id);
		[CCode (cname = "bamf_tab_source_get_tab_uri")]
		public static unowned string get_tab_uri (bamf.BamfTabSource source, string tab_id);
		[CCode (cname = "bamf_tab_source_get_tab_xid")]
		public static uint32 get_tab_xid (bamf.BamfTabSource source, string tab_id);
		[CCode (cname = "bamf_tab_source_show_tab")]
		public virtual void show_tab (bamf.BamfTabSource source, string tab_id, GLib.Error error);
		[NoWrapper]
		public virtual unowned string tab_ids (bamf.BamfTabSource source);
		[NoWrapper]
		public virtual unowned GLib.Array tab_preview (bamf.BamfTabSource source, string tab_id);
		[NoWrapper]
		public virtual unowned string tab_uri (bamf.BamfTabSource source, string tab_id);
		[NoWrapper]
		public virtual uint32 tab_xid (bamf.BamfTabSource source, string tab_id);
		[NoAccessorMethod]
		public string id { owned get; set construct; }
		public virtual signal void tab_closed (string p0);
		public virtual signal void tab_opened (string p0);
		public virtual signal void tab_uri_changed (string p0, string p1, string p2);
	}
	[CCode (type_check_function = "BAMF_IS_VIEW", cheader_filename = "libbamf/libbamf.h")]
	public class BamfView : GLib.Object {
		[CCode (has_construct_function = false)]
		protected BamfView ();
		[CCode (cname = "bamf_view_get_children")]
		public virtual unowned GLib.List get_children ();
		[CCode (cname = "bamf_view_get_icon")]
		public virtual unowned string get_icon ();
		[CCode (cname = "bamf_view_get_name")]
		public virtual unowned string get_name ();
		[CCode (cname = "bamf_view_get_view_type")]
		public static unowned string get_view_type ();
		[CCode (cname = "bamf_view_is_active")]
		public virtual bool is_active ();
		[CCode (cname = "bamf_view_is_closed")]
		public static bool is_closed ();
		[CCode (cname = "bamf_view_is_running")]
		public virtual bool is_running ();
		[CCode (cname = "bamf_view_is_urgent")]
		public virtual bool is_urgent ();
		[CCode (cname = "bamf_view_user_visible")]
		public static bool is_user_visible (bamf.BamfView view);
		[NoWrapper]
		public virtual unowned string view_type (bamf.BamfView view);
		[NoAccessorMethod]
		public bool active { get; }
		[NoAccessorMethod]
		public string path { owned get; set construct; }
		[NoAccessorMethod]
		public bool running { get; }
		[NoAccessorMethod]
		public bool urgent { get; }
		[NoAccessorMethod]
		public bool user_visible { get; }
		public virtual signal void active_changed (bool active);
		public virtual signal void child_added (bamf.BamfView child);
		public virtual signal void child_removed (bamf.BamfView child);
		public virtual signal void closed ();
		public virtual signal void running_changed (bool running);
		public virtual signal void urgent_changed (bool urgent);
		public virtual signal void user_visible_changed (bool user_visible);
	}
	[CCode (type_check_function = "BAMF_IS_WINDOW", cheader_filename = "libbamf/libbamf.h")]
	public class BamfWindow : bamf.BamfView {
		[CCode (has_construct_function = false)]
		protected BamfWindow ();
		[CCode (cname = "bamf_window_get_transient")]
		public unowned bamf.BamfWindow get_transient ();
		[CCode (cname = "bamf_window_get_window_type")]
		public bamf.BamfWindowType get_window_type ();
		[CCode (cname = "bamf_window_get_xid")]
		public uint32 get_xid ();
		[CCode (cname = "bamf_window_last_active")]
		public ulong last_active ();
	}
	[CCode (cprefix = "BAMF_WINDOW_", has_type_id = false, cheader_filename = "libbamf/libbamf.h")]
	public enum BamfWindowType {
		NORMAL,
		DESKTOP,
		DOCK,
		DIALOG,
		TOOLBAR,
		MENU,
		UTILITY,
		SPLASHSCREEN
	}
}
