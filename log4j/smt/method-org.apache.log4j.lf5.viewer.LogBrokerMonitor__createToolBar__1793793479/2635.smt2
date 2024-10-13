(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var361 0)
(declare-sort var1013 0)
(declare-sort var2033 0)
(declare-sort var2154 0)
(declare-sort var2646 0)
(declare-sort var417 0)
(declare-sort var1219 0)
(declare-sort var275 0)
(declare-sort var2889 0)
(declare-sort var660 0)
(declare-sort var2606 0)
(declare-sort var1594 0)
(declare-sort var3838 0)
(declare-sort var2678 0)
(declare-sort var476 0)
(declare-sort var983 0)
(declare-sort var1011 0)
(declare-sort var1794 0)
(declare-sort var2351 0)
(declare-sort var3779 0)
(declare-sort var395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1013-init () var1013)
(declare-fun <init>/954685434 (var1013) void)
(declare-fun putClientProperty/-942553159 (var2154 var2646 var2646) void)
(declare-fun cast-from-var1013-to-var2154 (var1013) var2154)
(declare-fun cast-from-String-to-var2646 (String) var2646)
(declare-fun cast-from-var2033-to-var2646 (var2033) var2646)
(declare-fun var417-init () var417)
(declare-fun <init>/31412616 (var417) void)
(declare-fun _fontSizeCombo/-1291859940 (var361) var417)
(declare-fun getClass/1258963082 (var2646) ClassObject)
(declare-fun cast-from-var361-to-var2646 (var361) var2646)
(declare-fun getClassLoader/-563698447 (ClassObject) var1219)
(declare-fun var1219_getSystemClassLoader/-483392723 () var1219)
(declare-fun getResource/282459787 (var1219 String) var275)
(declare-fun var660-init () var660)
(declare-fun <init>/-1005293566 (var660 String) void)
(declare-fun setToolTipText/33204293 (var2154 String) void)
(declare-fun cast-from-var660-to-var2154 (var660) var2154)
(declare-fun var2606-init () var2606)
(declare-fun <init>/895924084 (var2606 var361) void)
(declare-fun addActionListener/-1143302268 (var1594 var3838) void)
(declare-fun cast-from-var660-to-var1594 (var660) var1594)
(declare-fun cast-from-var2606-to-var3838 (var2606) var3838)
(declare-fun var2678_getDefaultToolkit/1070133764 () var2678)
(declare-fun _loadSystemFonts/-1291859940 (var361) Bool)
(declare-fun var476_getLocalGraphicsEnvironment/1274578704 () var476)
(declare-fun getAvailableFontFamilyNames/1396040614 (var476) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun _fontName/-1291859940 (var361) String)
(declare-fun setSelectedItem/1943063843 (var417 var2646) void)
(declare-fun var983-init () var983)
(declare-fun <init>/998408842 (var983 var361) void)
(declare-fun addActionListener/-2124801873 (var417 var3838) void)
(declare-fun cast-from-var983-to-var3838 (var983) var3838)
(declare-fun addItem/991962143 (var417 var2646) void)
(declare-fun _fontSize/-1291859940 (var361) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var1011-init () var1011)
(declare-fun <init>/-168287477 (var1011 var361) void)
(declare-fun cast-from-var1011-to-var3838 (var1011) var3838)
(declare-fun var1794-init () var1794)
(declare-fun <init>/-829434568 (var1794 String) void)
(declare-fun add/1696452917 (var2351 var3779) var3779)
(declare-fun cast-from-var1013-to-var2351 (var1013) var2351)
(declare-fun cast-from-var1794-to-var3779 (var1794) var3779)
(declare-fun cast-from-var417-to-var3779 (var417) var3779)
(declare-fun addSeparator/-692065624 (var1013) void)
(declare-fun cast-from-var660-to-var3779 (var660) var3779)
(declare-fun setAlignmentY/-1214558670 (var2154 Float32) void)
(declare-fun setAlignmentX/592895793 (var2154 Float32) void)
(declare-fun getPreferredSize/784517592 (var2154) var395)
(declare-fun cast-from-var417-to-var2154 (var417) var2154)
(declare-fun setMaximumSize/1529350009 (var2154 var395) void)
(declare-const null-var361 var361)
(declare-const var2033-TRUE var2033)
(declare-const null-var1219 var1219)
(declare-const null-var2889 var2889)
(declare-const null-var275 var275)
(declare-const var3315 var361) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var3315 null-var361)))
(define-const var3635 var1013 var1013-init) ; Statement: $r0 = new javax.swing.JToolBar 
(assert true)
;(assert (<init>/954685434 var3635)) ; Statement: specialinvoke $r0.<javax.swing.JToolBar: void <init>()>() 

(declare-const var3635!1 var1013)
(define-const var1950 var2033 var2033-TRUE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
;(assert (putClientProperty/-942553159 (cast-from-var1013-to-var2154 var3635!1) (cast-from-String-to-var2646 "JToolBar.isRollover") (cast-from-var2033-to-var2646 var1950))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1) 

(declare-const var3635!2 var1013)
(declare-const var1119 String)
(declare-const var1950!1 var2033)
(define-const var499 var417 var417-init) ; Statement: $r2 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var499)) ; Statement: specialinvoke $r2.<javax.swing.JComboBox: void <init>()>() 

(declare-const var499!1 var417)
(define-const var2960 var417 var417-init) ; Statement: $r3 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var2960)) ; Statement: specialinvoke $r3.<javax.swing.JComboBox: void <init>()>() 

(declare-const var2960!1 var417)
(declare-const var3315!1 var361)
(assert (not (= var3315!1 null-var361)))
(assert (= (_fontSizeCombo/-1291859940 var3315!1) var2960!1)) ; Statement: r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3 
(assert true)
(define-const var3799 ClassObject (getClass/1258963082 (cast-from-var361-to-var2646 var3315!1))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3266 var1219 (getClassLoader/-563698447 var3799)) ; Statement: r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(assert (not (not (= var3266 null-var1219)))) ; Negate: Cond: r20 != null  
(define-const var3266!1 var1219 var1219_getSystemClassLoader/-483392723) ; Statement: r20 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3477 var275 (getResource/282459787 var3266!1 "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif")) ; Statement: $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(define-const var2800 var2889 null-var2889) ; Statement: r21 = null 
 ; Statement: if $r19 == null goto $r6 = new javax.swing.JButton 
(assert (= var3477 null-var275)) ; Cond: $r19 == null 
(define-const var3798 var660 var660-init) ; Statement: $r6 = new javax.swing.JButton 
(assert true)
;(assert (<init>/-1005293566 var3798 "Clear Log Table")) ; Statement: specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table") 

(declare-const var3798!1 var660)
(declare-const var2179 String)
 ; Statement: if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 
(assert (= var2800 null-var2889)) ; Cond: r21 == null 
(assert true)
;(assert (setToolTipText/33204293 (cast-from-var660-to-var2154 var3798!1) "Clear Log Table.")) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 

(declare-const var3798!2 var660)
(declare-const var211 String)
(define-const var3229 var2606 var2606-init) ; Statement: $r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29 
(assert true)
;(assert (<init>/895924084 var3229 var3315!1)) ; Statement: specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var3229!1 var2606)
(declare-const var3315!2 var361)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var660-to-var1594 var3798!2) (cast-from-var2606-to-var3838 var3229!1))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7) 

(declare-const var3798!3 var660)
(declare-const var3229!2 var2606)
(define-const var3803 var2678 var2678_getDefaultToolkit/1070133764) ; Statement: $r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>() 
(define-const var1846 Bool (_loadSystemFonts/-1291859940 var3315!2)) ; Statement: $z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert (not (= (ite var1846 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2242 var476 var476_getLocalGraphicsEnvironment/1274578704) ; Statement: $r16 = staticinvoke <java.awt.GraphicsEnvironment: java.awt.GraphicsEnvironment getLocalGraphicsEnvironment()>() 
(assert true)
(define-const var1692 (Array Int String) (getAvailableFontFamilyNames/1396040614 var2242)) ; Statement: r22 = virtualinvoke $r16.<java.awt.GraphicsEnvironment: java.lang.String[] getAvailableFontFamilyNames()>() 
 ; Statement: goto [?= i1 = 0] 
(assert true) ; Non Conditional
(define-const var2381 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2795 Int (getLength-Arr-String-1 var1692)) ; Statement: $i2 = lengthof r22 
 ; Statement: if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert (>= var2381 var2795)) ; Cond: i1 >= $i2 
(define-const var3270 String (_fontName/-1291859940 var3315!2)) ; Statement: $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert true)
;(assert (setSelectedItem/1943063843 var499!1 (cast-from-String-to-var2646 var3270))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8) 

(declare-const var499!2 var417)
(declare-const var3270!1 String)
(define-const var2099 var983 var983-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30 
(assert true)
;(assert (<init>/998408842 var2099 var3315!2)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var2099!1 var983)
(declare-const var3315!3 var361)
(assert true)
;(assert (addActionListener/-2124801873 var499!2 (cast-from-var983-to-var3838 var2099!1))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9) 

(declare-const var499!3 var417)
(declare-const var2099!2 var983)
(assert true)
;(assert (addItem/991962143 var2960!1 (cast-from-String-to-var2646 "8"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8") 

(declare-const var2960!2 var417)
(declare-const var350 String)
(assert true)
;(assert (addItem/991962143 var2960!2 (cast-from-String-to-var2646 "9"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9") 

(declare-const var2960!3 var417)
(declare-const var3048 String)
(assert true)
;(assert (addItem/991962143 var2960!3 (cast-from-String-to-var2646 "10"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10") 

(declare-const var2960!4 var417)
(declare-const var3767 String)
(assert true)
;(assert (addItem/991962143 var2960!4 (cast-from-String-to-var2646 "12"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12") 

(declare-const var2960!5 var417)
(declare-const var3392 String)
(assert true)
;(assert (addItem/991962143 var2960!5 (cast-from-String-to-var2646 "14"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14") 

(declare-const var2960!6 var417)
(declare-const var2151 String)
(assert true)
;(assert (addItem/991962143 var2960!6 (cast-from-String-to-var2646 "16"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16") 

(declare-const var2960!7 var417)
(declare-const var2792 String)
(assert true)
;(assert (addItem/991962143 var2960!7 (cast-from-String-to-var2646 "18"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18") 

(declare-const var2960!8 var417)
(declare-const var3793 String)
(assert true)
;(assert (addItem/991962143 var2960!8 (cast-from-String-to-var2646 "24"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24") 

(declare-const var2960!9 var417)
(declare-const var2428 String)
(define-const var2343 Int (_fontSize/-1291859940 var3315!3)) ; Statement: $i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> 
(define-const var2037 String (String_valueOf/1240665136 var2343)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setSelectedItem/1943063843 var2960!9 (cast-from-String-to-var2646 var2037))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10) 

(declare-const var2960!10 var417)
(declare-const var2037!1 String)
(define-const var3966 var1011 var1011-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31 
(assert true)
;(assert (<init>/-168287477 var3966 var3315!3)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var3966!1 var1011)
(declare-const var3315!4 var361)
(assert true)
;(assert (addActionListener/-2124801873 var2960!10 (cast-from-var1011-to-var3838 var3966!1))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var2960!11 var417)
(declare-const var3966!2 var1011)
(define-const var3826 var1794 var1794-init) ; Statement: $r12 = new javax.swing.JLabel 
(assert true)
;(assert (<init>/-829434568 var3826 " Font: ")) ; Statement: specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ") 

(declare-const var3826!1 var1794)
(declare-const var328 String)
(assert true)
;(assert (add/1696452917 (cast-from-var1013-to-var2351 var3635!2) (cast-from-var1794-to-var3779 var3826!1))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12) 

(declare-const var3635!3 var1013)
(declare-const var3826!2 var1794)
(assert true)
;(assert (add/1696452917 (cast-from-var1013-to-var2351 var3635!3) (cast-from-var417-to-var3779 var499!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2) 

(declare-const var3635!4 var1013)
(declare-const var499!4 var417)
(assert true)
;(assert (add/1696452917 (cast-from-var1013-to-var2351 var3635!4) (cast-from-var417-to-var3779 var2960!11))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3) 

(declare-const var3635!5 var1013)
(declare-const var2960!12 var417)
(assert true)
;(assert (addSeparator/-692065624 var3635!5)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var3635!6 var1013)
(assert true)
;(assert (addSeparator/-692065624 var3635!6)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var3635!7 var1013)
(assert true)
;(assert (add/1696452917 (cast-from-var1013-to-var2351 var3635!7) (cast-from-var660-to-var3779 var3798!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6) 

(declare-const var3635!8 var1013)
(declare-const var3798!4 var660)
(assert true)
;(assert (setAlignmentY/-1214558670 (cast-from-var660-to-var2154 var3798!4) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F) 

(declare-const var3798!5 var660)
(declare-const var2463 Float32)
(assert true)
;(assert (setAlignmentX/592895793 (cast-from-var660-to-var2154 var3798!5) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F) 

(declare-const var3798!6 var660)
(declare-const var2463!1 Float32)
(assert true)
(define-const var657 var395 (getPreferredSize/784517592 (cast-from-var417-to-var2154 var499!4))) ; Statement: $r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var417-to-var2154 var499!4) var657)) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13) 

(declare-const var499!5 var417)
(declare-const var657!1 var395)
(assert true)
(define-const var2427 var395 (getPreferredSize/784517592 (cast-from-var417-to-var2154 var2960!12))) ; Statement: $r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var417-to-var2154 var2960!12) var2427)) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14) 

(declare-const var2960!13 var417)
(declare-const var2427!1 var395)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1013-init=([], javax.swing.JToolBar), <init>/954685434=([javax.swing.JToolBar], void), putClientProperty/-942553159=([javax.swing.JComponent, java.lang.Object, java.lang.Object], void), cast-from-var1013-to-var2154=([javax.swing.JToolBar], javax.swing.JComponent), cast-from-String-to-var2646=([java.lang.String], java.lang.Object), cast-from-var2033-to-var2646=([java.lang.Boolean], java.lang.Object), var417-init=([], javax.swing.JComboBox), <init>/31412616=([javax.swing.JComboBox], void), _fontSizeCombo/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JComboBox), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var361-to-var2646=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), var1219_getSystemClassLoader/-483392723=([], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var660-init=([], javax.swing.JButton), <init>/-1005293566=([javax.swing.JButton, java.lang.String], void), setToolTipText/33204293=([javax.swing.JComponent, java.lang.String], void), cast-from-var660-to-var2154=([javax.swing.JButton], javax.swing.JComponent), var2606-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$29), <init>/895924084=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var660-to-var1594=([javax.swing.JButton], javax.swing.AbstractButton), cast-from-var2606-to-var3838=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29], java.awt.event.ActionListener), var2678_getDefaultToolkit/1070133764=([], java.awt.Toolkit), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), var476_getLocalGraphicsEnvironment/1274578704=([], java.awt.GraphicsEnvironment), getAvailableFontFamilyNames/1396040614=([java.awt.GraphicsEnvironment], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void), var983-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$30), <init>/998408842=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-2124801873=([javax.swing.JComboBox, java.awt.event.ActionListener], void), cast-from-var983-to-var3838=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30], java.awt.event.ActionListener), addItem/991962143=([javax.swing.JComboBox, java.lang.Object], void), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), String_valueOf/1240665136=([int], java.lang.String), var1011-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$31), <init>/-168287477=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), cast-from-var1011-to-var3838=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31], java.awt.event.ActionListener), var1794-init=([], javax.swing.JLabel), <init>/-829434568=([javax.swing.JLabel, java.lang.String], void), add/1696452917=([java.awt.Container, java.awt.Component], java.awt.Component), cast-from-var1013-to-var2351=([javax.swing.JToolBar], java.awt.Container), cast-from-var1794-to-var3779=([javax.swing.JLabel], java.awt.Component), cast-from-var417-to-var3779=([javax.swing.JComboBox], java.awt.Component), addSeparator/-692065624=([javax.swing.JToolBar], void), cast-from-var660-to-var3779=([javax.swing.JButton], java.awt.Component), setAlignmentY/-1214558670=([javax.swing.JComponent, float], void), setAlignmentX/592895793=([javax.swing.JComponent, float], void), getPreferredSize/784517592=([javax.swing.JComponent], java.awt.Dimension), cast-from-var417-to-var2154=([javax.swing.JComboBox], javax.swing.JComponent), setMaximumSize/1529350009=([javax.swing.JComponent, java.awt.Dimension], void)}
; {var361=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3315=r4, var1013=javax.swing.JToolBar, var3635=$r0, var2033=java.lang.Boolean, var1950=$r1, var2154=javax.swing.JComponent, var2646=java.lang.Object, var1119="JToolBar.isRollover", var417=javax.swing.JComboBox, var499=$r2, var2960=$r3, var3799=$r5, var1219=java.lang.ClassLoader, var3266=r20, var275=java.net.URL, var3477=$r19, var2889=javax.swing.ImageIcon, var2800=r21, var660=javax.swing.JButton, var3798=$r6, var2179="Clear Log Table", var211="Clear Log Table.", var2606=org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, var3229=$r7, var1594=javax.swing.AbstractButton, var3838=java.awt.event.ActionListener, var2678=java.awt.Toolkit, var3803=$r17, var1846=$z0, var476=java.awt.GraphicsEnvironment, var2242=$r16, var1692=r22, var2381=i1, var2795=$i2, var3270=$r8, var983=org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, var2099=$r9, var350="8", var3048="9", var3767="10", var3392="12", var2151="14", var2792="16", var3793="18", var2428="24", var2343=$i0, var2037=$r10, var1011=org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, var3966=$r11, var1794=javax.swing.JLabel, var3826=$r12, var328=" Font: ", var2351=java.awt.Container, var3779=java.awt.Component, var2463=0.5F, var395=java.awt.Dimension, var657=$r13, var2427=$r14}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var361, r4=var3315, javax.swing.JToolBar=var1013, $r0=var3635, java.lang.Boolean=var2033, $r1=var1950, javax.swing.JComponent=var2154, java.lang.Object=var2646, "JToolBar.isRollover"=var1119, javax.swing.JComboBox=var417, $r2=var499, $r3=var2960, $r5=var3799, java.lang.ClassLoader=var1219, r20=var3266, java.net.URL=var275, $r19=var3477, javax.swing.ImageIcon=var2889, r21=var2800, javax.swing.JButton=var660, $r6=var3798, "Clear Log Table"=var2179, "Clear Log Table."=var211, org.apache.log4j.lf5.viewer.LogBrokerMonitor$29=var2606, $r7=var3229, javax.swing.AbstractButton=var1594, java.awt.event.ActionListener=var3838, java.awt.Toolkit=var2678, $r17=var3803, $z0=var1846, java.awt.GraphicsEnvironment=var476, $r16=var2242, r22=var1692, i1=var2381, $i2=var2795, $r8=var3270, org.apache.log4j.lf5.viewer.LogBrokerMonitor$30=var983, $r9=var2099, "8"=var350, "9"=var3048, "10"=var3767, "12"=var3392, "14"=var2151, "16"=var2792, "18"=var3793, "24"=var2428, $i0=var2343, $r10=var2037, org.apache.log4j.lf5.viewer.LogBrokerMonitor$31=var1011, $r11=var3966, javax.swing.JLabel=var1794, $r12=var3826, " Font: "=var328, java.awt.Container=var2351, java.awt.Component=var3779, 0.5F=var2463, java.awt.Dimension=var395, $r13=var657, $r14=var2427}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new javax.swing.JToolBar;	specialinvoke $r0.<javax.swing.JToolBar: void <init>()>();	$r1 = <java.lang.Boolean: java.lang.Boolean TRUE>;	virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1);	$r2 = new javax.swing.JComboBox;	specialinvoke $r2.<javax.swing.JComboBox: void <init>()>();	$r3 = new javax.swing.JComboBox;	specialinvoke $r3.<javax.swing.JComboBox: void <init>()>();	r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3;	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r20 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	$r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r21 = null;	if $r19 == null goto $r6 = new javax.swing.JButton;	$r6 = new javax.swing.JButton;	specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table");	if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	$r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29;	specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7);	$r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>();	$z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts>;	if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	$r16 = staticinvoke <java.awt.GraphicsEnvironment: java.awt.GraphicsEnvironment getLocalGraphicsEnvironment()>();	r22 = virtualinvoke $r16.<java.awt.GraphicsEnvironment: java.lang.String[] getAvailableFontFamilyNames()>();	goto [?= i1 = 0];	i1 = 0;	$i2 = lengthof r22;	if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	$r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8);	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9);	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24");	$i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize>;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11);	$r12 = new javax.swing.JLabel;	specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ");	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3);	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F);	$r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13);	$r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14);	return $r0
;block_num 9