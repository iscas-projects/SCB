(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3676 0)
(declare-sort var15 0)
(declare-sort var817 0)
(declare-sort var546 0)
(declare-sort var1456 0)
(declare-sort var3985 0)
(declare-sort var320 0)
(declare-sort var1916 0)
(declare-sort var2571 0)
(declare-sort var747 0)
(declare-sort var1264 0)
(declare-sort var3894 0)
(declare-sort var2005 0)
(declare-sort var1485 0)
(declare-sort var3725 0)
(declare-sort var1958 0)
(declare-sort var1422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var817) void)
(declare-fun cast-from-var3676-to-var817 (var3676) var817)
(declare-fun _logMonitorFrameWidth/-1291859940 (var3676) Int)
(declare-fun _logMonitorFrameHeight/-1291859940 (var3676) Int)
(declare-fun _NDCTextFilter/-1291859940 (var3676) String)
(declare-fun _leastSevereDisplayedLogLevel/-1291859940 (var3676) var546)
(declare-fun var817-init () var817)
(declare-fun _lock/-1291859940 (var3676) var817)
(declare-fun _fontSize/-1291859940 (var3676) Int)
(declare-fun _fontName/-1291859940 (var3676) String)
(declare-fun _currentView/-1291859940 (var3676) String)
(declare-fun _loadSystemFonts/-1291859940 (var3676) Bool)
(declare-fun _trackTableScrollPane/-1291859940 (var3676) Bool)
(declare-fun _callSystemExitOnClose/-1291859940 (var3676) Bool)
(declare-fun var1456-init () var1456)
(declare-fun <init>/-1913910780 (var1456) void)
(declare-fun cast-from-var1456-to-var15 (var1456) var15)
(declare-fun _displayedLogBrokerProperties/-1291859940 (var3676) var15)
(declare-fun var3985-init () var3985)
(declare-fun <init>/-201242697 (var3985) void)
(declare-fun cast-from-var3985-to-var320 (var3985) var320)
(declare-fun _logLevelMenuItems/-1291859940 (var3676) var320)
(declare-fun _logTableColumnMenuItems/-1291859940 (var3676) var320)
(declare-fun _levels/-1291859940 (var3676) var15)
(declare-fun _columns/-1291859940 (var3676) var15)
(declare-fun _isDisposed/-1291859940 (var3676) Bool)
(declare-fun _configurationManager/-1291859940 (var3676) var1916)
(declare-fun _mruFileManager/-1291859940 (var3676) var2571)
(declare-fun _fileLocation/-1291859940 (var3676) var747)
(declare-fun var1264_getLogTableColumns/1590311967 () var15)
(declare-fun var3894_getProperty/258823597 (String) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun initComponents/-1300827447 (var3676) void)
(declare-fun _logMonitorFrame/-1291859940 (var3676) var1485)
(declare-fun var3725-init () var3725)
(declare-fun <init>/1713914917 (var3725 var3676 var3676) void)
(declare-fun addWindowListener/-1857070992 (var1958 var1422) void)
(declare-fun cast-from-var1485-to-var1958 (var1485) var1958)
(declare-fun cast-from-var3725-to-var1422 (var3725) var1422)
(declare-const null-var3676 var3676)
(declare-const null-var15 var15)
(declare-const var546-DEBUG var546)
(declare-const null-var1916 var1916)
(declare-const null-var2571 var2571)
(declare-const null-var747 var747)
(declare-const null-String String)
(declare-const var1072 var3676) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1072 null-var3676)))
(declare-const var630 var15) ; Statement: r6 := @parameter0: java.util.List 
(assert (not (= var630 null-var15)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3676-to-var817 var1072))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1072!1 var3676)
(declare-const var1072!2 var3676)
(assert (not (= var1072!2 null-var3676)))
(assert (= (_logMonitorFrameWidth/-1291859940 var1072!2) 550)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _logMonitorFrameWidth> = 550 
(declare-const var1072!3 var3676)
(assert (not (= var1072!3 null-var3676)))
(assert (= (_logMonitorFrameHeight/-1291859940 var1072!3) 500)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _logMonitorFrameHeight> = 500 
(declare-const var1072!4 var3676)
(assert (not (= var1072!4 null-var3676)))
(assert (= (_NDCTextFilter/-1291859940 var1072!4) "")) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _NDCTextFilter> = "" 
(define-const var2515 var546 var546-DEBUG) ; Statement: $r1 = <org.apache.log4j.lf5.LogLevel: org.apache.log4j.lf5.LogLevel DEBUG> 
(declare-const var1072!5 var3676)
(assert (not (= var1072!5 null-var3676)))
(assert (= (_leastSevereDisplayedLogLevel/-1291859940 var1072!5) var2515)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.LogLevel _leastSevereDisplayedLogLevel> = $r1 
(define-const var3622 var817 var817-init) ; Statement: $r2 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var3622)) ; Statement: specialinvoke $r2.<java.lang.Object: void <init>()>() 

(declare-const var3622!1 var817)
(declare-const var1072!6 var3676)
(assert (not (= var1072!6 null-var3676)))
(assert (= (_lock/-1291859940 var1072!6) var3622!1)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.Object _lock> = $r2 
(declare-const var1072!7 var3676)
(assert (not (= var1072!7 null-var3676)))
(assert (= (_fontSize/-1291859940 var1072!7) 10)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> = 10 
(declare-const var1072!8 var3676)
(assert (not (= var1072!8 null-var3676)))
(assert (= (_fontName/-1291859940 var1072!8) "Dialog")) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> = "Dialog" 
(declare-const var1072!9 var3676)
(assert (not (= var1072!9 null-var3676)))
(assert (= (_currentView/-1291859940 var1072!9) "Detailed")) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _currentView> = "Detailed" 
(declare-const var1072!10 var3676)
(assert (not (= var1072!10 null-var3676)))
(assert (= (_loadSystemFonts/-1291859940 var1072!10) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> = 0 
(declare-const var1072!11 var3676)
(assert (not (= var1072!11 null-var3676)))
(assert (= (_trackTableScrollPane/-1291859940 var1072!11) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _trackTableScrollPane> = 1 
(declare-const var1072!12 var3676)
(assert (not (= var1072!12 null-var3676)))
(assert (= (_callSystemExitOnClose/-1291859940 var1072!12) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> = 0 
(define-const var1486 var1456 var1456-init) ; Statement: $r3 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var1486)) ; Statement: specialinvoke $r3.<java.util.Vector: void <init>()>() 

(declare-const var1486!1 var1456)
(declare-const var1072!13 var3676)
(assert (not (= var1072!13 null-var3676)))
(assert (= (_displayedLogBrokerProperties/-1291859940 var1072!13) (cast-from-var1456-to-var15 var1486!1))) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _displayedLogBrokerProperties> = $r3 
(define-const var192 var3985 var3985-init) ; Statement: $r4 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var192)) ; Statement: specialinvoke $r4.<java.util.HashMap: void <init>()>() 

(declare-const var192!1 var3985)
(declare-const var1072!14 var3676)
(assert (not (= var1072!14 null-var3676)))
(assert (= (_logLevelMenuItems/-1291859940 var1072!14) (cast-from-var3985-to-var320 var192!1))) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.Map _logLevelMenuItems> = $r4 
(define-const var1319 var3985 var3985-init) ; Statement: $r5 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1319)) ; Statement: specialinvoke $r5.<java.util.HashMap: void <init>()>() 

(declare-const var1319!1 var3985)
(declare-const var1072!15 var3676)
(assert (not (= var1072!15 null-var3676)))
(assert (= (_logTableColumnMenuItems/-1291859940 var1072!15) (cast-from-var3985-to-var320 var1319!1))) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.Map _logTableColumnMenuItems> = $r5 
(declare-const var1072!16 var3676)
(assert (not (= var1072!16 null-var3676)))
(assert (= (_levels/-1291859940 var1072!16) null-var15)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _levels> = null 
(declare-const var1072!17 var3676)
(assert (not (= var1072!17 null-var3676)))
(assert (= (_columns/-1291859940 var1072!17) null-var15)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _columns> = null 
(declare-const var1072!18 var3676)
(assert (not (= var1072!18 null-var3676)))
(assert (= (_isDisposed/-1291859940 var1072!18) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _isDisposed> = 0 
(declare-const var1072!19 var3676)
(assert (not (= var1072!19 null-var3676)))
(assert (= (_configurationManager/-1291859940 var1072!19) null-var1916)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.ConfigurationManager _configurationManager> = null 
(declare-const var1072!20 var3676)
(assert (not (= var1072!20 null-var3676)))
(assert (= (_mruFileManager/-1291859940 var1072!20) null-var2571)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager> = null 
(declare-const var1072!21 var3676)
(assert (not (= var1072!21 null-var3676)))
(assert (= (_fileLocation/-1291859940 var1072!21) null-var747)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.io.File _fileLocation> = null 
(declare-const var1072!22 var3676)
(assert (not (= var1072!22 null-var3676)))
(assert (= (_levels/-1291859940 var1072!22) var630)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _levels> = r6 
(define-const var3312 var15 var1264_getLogTableColumns/1590311967) ; Statement: $r7 = staticinvoke <org.apache.log4j.lf5.viewer.LogTableColumn: java.util.List getLogTableColumns()>() 
(declare-const var1072!23 var3676)
(assert (not (= var1072!23 null-var3676)))
(assert (= (_columns/-1291859940 var1072!23) var3312)) ; Statement: r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _columns> = $r7 
(define-const var12 String (var3894_getProperty/258823597 "monitor.exit")) ; Statement: r12 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("monitor.exit") 
 ; Statement: if r12 != null goto $r8 = virtualinvoke r12.<java.lang.String: java.lang.String trim()>() 
(assert (not (= var12 null-String))) ; Cond: r12 != null 
(assert true)
(define-const var1632 String (trim/-847153721 var12)) ; Statement: $r8 = virtualinvoke r12.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var17 String (toLowerCase/415700667 var1632)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var77 Bool (= var17 "true")) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>("true") 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void initComponents()>() 
(assert (= (ite var77 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (initComponents/-1300827447 var1072!23)) ; Statement: virtualinvoke r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void initComponents()>() 

(declare-const var1072!24 var3676)
(define-const var3124 var1485 (_logMonitorFrame/-1291859940 var1072!24)) ; Statement: $r10 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame> 
(define-const var927 var3725 var3725-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor 
(assert true)
;(assert (<init>/1713914917 var927 var1072!24 var1072!24)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor,org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r0, r0) 

(declare-const var927!1 var3725)
(declare-const var1072!25 var3676)
(declare-const var1072!26 var3676)
(assert true)
;(assert (addWindowListener/-1857070992 (cast-from-var1485-to-var1958 var3124) (cast-from-var3725-to-var1422 var927!1))) ; Statement: virtualinvoke $r10.<javax.swing.JFrame: void addWindowListener(java.awt.event.WindowListener)>($r9) 

(declare-const var3124!1 var1485)
(declare-const var927!2 var3725)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3676-to-var817=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), _logMonitorFrameWidth/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), _logMonitorFrameHeight/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), _NDCTextFilter/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), _leastSevereDisplayedLogLevel/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.LogLevel), var817-init=([], java.lang.Object), _lock/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), _currentView/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), _trackTableScrollPane/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), _callSystemExitOnClose/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), var1456-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), cast-from-var1456-to-var15=([java.util.Vector], java.util.List), _displayedLogBrokerProperties/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.util.List), var3985-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var3985-to-var320=([java.util.HashMap], java.util.Map), _logLevelMenuItems/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.util.Map), _logTableColumnMenuItems/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.util.Map), _levels/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.util.List), _columns/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.util.List), _isDisposed/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), _configurationManager/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.configure.ConfigurationManager), _mruFileManager/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.configure.MRUFileManager), _fileLocation/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.io.File), var1264_getLogTableColumns/1590311967=([], java.util.List), var3894_getProperty/258823597=([java.lang.String], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), initComponents/-1300827447=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), _logMonitorFrame/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JFrame), var3725-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor), <init>/1713914917=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor, org.apache.log4j.lf5.viewer.LogBrokerMonitor, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addWindowListener/-1857070992=([java.awt.Window, java.awt.event.WindowListener], void), cast-from-var1485-to-var1958=([javax.swing.JFrame], java.awt.Window), cast-from-var3725-to-var1422=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor], java.awt.event.WindowListener)}
; {var3676=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1072=r0, var15=java.util.List, var630=r6, var817=java.lang.Object, var546=org.apache.log4j.lf5.LogLevel, var2515=$r1, var3622=$r2, var1456=java.util.Vector, var1486=$r3, var3985=java.util.HashMap, var192=$r4, var320=java.util.Map, var1319=$r5, var1916=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var2571=org.apache.log4j.lf5.viewer.configure.MRUFileManager, var747=java.io.File, var1264=org.apache.log4j.lf5.viewer.LogTableColumn, var3312=$r7, var3894=java.lang.System, var12=r12, var2005=null_type, var1632=$r8, var17=$r11, var77=$z0, var1485=javax.swing.JFrame, var3124=$r10, var3725=org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor, var927=$r9, var1958=java.awt.Window, var1422=java.awt.event.WindowListener}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3676, r0=var1072, java.util.List=var15, r6=var630, java.lang.Object=var817, org.apache.log4j.lf5.LogLevel=var546, $r1=var2515, $r2=var3622, java.util.Vector=var1456, $r3=var1486, java.util.HashMap=var3985, $r4=var192, java.util.Map=var320, $r5=var1319, org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var1916, org.apache.log4j.lf5.viewer.configure.MRUFileManager=var2571, java.io.File=var747, org.apache.log4j.lf5.viewer.LogTableColumn=var1264, $r7=var3312, java.lang.System=var3894, r12=var12, null_type=var2005, $r8=var1632, $r11=var17, $z0=var77, javax.swing.JFrame=var1485, $r10=var3124, org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor=var3725, $r9=var927, java.awt.Window=var1958, java.awt.event.WindowListener=var1422}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r6 := @parameter0: java.util.List;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _logMonitorFrameWidth> = 550;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _logMonitorFrameHeight> = 500;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _NDCTextFilter> = "";	$r1 = <org.apache.log4j.lf5.LogLevel: org.apache.log4j.lf5.LogLevel DEBUG>;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.LogLevel _leastSevereDisplayedLogLevel> = $r1;	$r2 = new java.lang.Object;	specialinvoke $r2.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.Object _lock> = $r2;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> = 10;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> = "Dialog";	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _currentView> = "Detailed";	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> = 0;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _trackTableScrollPane> = 1;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _callSystemExitOnClose> = 0;	$r3 = new java.util.Vector;	specialinvoke $r3.<java.util.Vector: void <init>()>();	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _displayedLogBrokerProperties> = $r3;	$r4 = new java.util.HashMap;	specialinvoke $r4.<java.util.HashMap: void <init>()>();	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.Map _logLevelMenuItems> = $r4;	$r5 = new java.util.HashMap;	specialinvoke $r5.<java.util.HashMap: void <init>()>();	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.Map _logTableColumnMenuItems> = $r5;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _levels> = null;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _columns> = null;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _isDisposed> = 0;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.ConfigurationManager _configurationManager> = null;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager> = null;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.io.File _fileLocation> = null;	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _levels> = r6;	$r7 = staticinvoke <org.apache.log4j.lf5.viewer.LogTableColumn: java.util.List getLogTableColumns()>();	r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.util.List _columns> = $r7;	r12 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("monitor.exit");	if r12 != null goto $r8 = virtualinvoke r12.<java.lang.String: java.lang.String trim()>();	$r8 = virtualinvoke r12.<java.lang.String: java.lang.String trim()>();	$r11 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>("true");	if $z0 == 0 goto virtualinvoke r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void initComponents()>();	virtualinvoke r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: void initComponents()>();	$r10 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JFrame _logMonitorFrame>;	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$LogBrokerMonitorWindowAdaptor: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor,org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r0, r0);	virtualinvoke $r10.<javax.swing.JFrame: void addWindowListener(java.awt.event.WindowListener)>($r9);	return
;block_num 3