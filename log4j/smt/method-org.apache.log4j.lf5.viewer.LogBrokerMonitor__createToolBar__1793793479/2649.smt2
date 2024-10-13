(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var512 0)
(declare-sort var1434 0)
(declare-sort var2774 0)
(declare-sort var1236 0)
(declare-sort var3678 0)
(declare-sort var1508 0)
(declare-sort var2364 0)
(declare-sort var439 0)
(declare-sort var999 0)
(declare-sort var1093 0)
(declare-sort var979 0)
(declare-sort var2674 0)
(declare-sort var2414 0)
(declare-sort var829 0)
(declare-sort var186 0)
(declare-sort var1090 0)
(declare-sort var1490 0)
(declare-sort var448 0)
(declare-sort var2892 0)
(declare-sort var3949 0)
(declare-sort var2638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1434-init () var1434)
(declare-fun <init>/954685434 (var1434) void)
(declare-fun putClientProperty/-942553159 (var1236 var3678 var3678) void)
(declare-fun cast-from-var1434-to-var1236 (var1434) var1236)
(declare-fun cast-from-String-to-var3678 (String) var3678)
(declare-fun cast-from-var2774-to-var3678 (var2774) var3678)
(declare-fun var1508-init () var1508)
(declare-fun <init>/31412616 (var1508) void)
(declare-fun _fontSizeCombo/-1291859940 (var512) var1508)
(declare-fun getClass/1258963082 (var3678) ClassObject)
(declare-fun cast-from-var512-to-var3678 (var512) var3678)
(declare-fun getClassLoader/-563698447 (ClassObject) var2364)
(declare-fun getResource/282459787 (var2364 String) var439)
(declare-fun var1093-init () var1093)
(declare-fun <init>/-1005293566 (var1093 String) void)
(declare-fun setIcon/1650080689 (var979 var2674) void)
(declare-fun cast-from-var1093-to-var979 (var1093) var979)
(declare-fun cast-from-var999-to-var2674 (var999) var2674)
(declare-fun setToolTipText/33204293 (var1236 String) void)
(declare-fun cast-from-var1093-to-var1236 (var1093) var1236)
(declare-fun var2414-init () var2414)
(declare-fun <init>/895924084 (var2414 var512) void)
(declare-fun addActionListener/-1143302268 (var979 var829) void)
(declare-fun cast-from-var2414-to-var829 (var2414) var829)
(declare-fun var186_getDefaultToolkit/1070133764 () var186)
(declare-fun _loadSystemFonts/-1291859940 (var512) Bool)
(declare-fun getFontList/-357147281 (var186) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun _fontName/-1291859940 (var512) String)
(declare-fun setSelectedItem/1943063843 (var1508 var3678) void)
(declare-fun var1090-init () var1090)
(declare-fun <init>/998408842 (var1090 var512) void)
(declare-fun addActionListener/-2124801873 (var1508 var829) void)
(declare-fun cast-from-var1090-to-var829 (var1090) var829)
(declare-fun addItem/991962143 (var1508 var3678) void)
(declare-fun _fontSize/-1291859940 (var512) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var1490-init () var1490)
(declare-fun <init>/-168287477 (var1490 var512) void)
(declare-fun cast-from-var1490-to-var829 (var1490) var829)
(declare-fun var448-init () var448)
(declare-fun <init>/-829434568 (var448 String) void)
(declare-fun add/1696452917 (var2892 var3949) var3949)
(declare-fun cast-from-var1434-to-var2892 (var1434) var2892)
(declare-fun cast-from-var448-to-var3949 (var448) var3949)
(declare-fun cast-from-var1508-to-var3949 (var1508) var3949)
(declare-fun addSeparator/-692065624 (var1434) void)
(declare-fun cast-from-var1093-to-var3949 (var1093) var3949)
(declare-fun setAlignmentY/-1214558670 (var1236 Float32) void)
(declare-fun setAlignmentX/592895793 (var1236 Float32) void)
(declare-fun getPreferredSize/784517592 (var1236) var2638)
(declare-fun cast-from-var1508-to-var1236 (var1508) var1236)
(declare-fun setMaximumSize/1529350009 (var1236 var2638) void)
(declare-const null-var512 var512)
(declare-const var2774-TRUE var2774)
(declare-const null-var2364 var2364)
(declare-const null-var999 var999)
(declare-const null-var439 var439)
(declare-const var3568 var512) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var3568 null-var512)))
(define-const var3594 var1434 var1434-init) ; Statement: $r0 = new javax.swing.JToolBar 
(assert true)
;(assert (<init>/954685434 var3594)) ; Statement: specialinvoke $r0.<javax.swing.JToolBar: void <init>()>() 

(declare-const var3594!1 var1434)
(define-const var1048 var2774 var2774-TRUE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
;(assert (putClientProperty/-942553159 (cast-from-var1434-to-var1236 var3594!1) (cast-from-String-to-var3678 "JToolBar.isRollover") (cast-from-var2774-to-var3678 var1048))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1) 

(declare-const var3594!2 var1434)
(declare-const var1257 String)
(declare-const var1048!1 var2774)
(define-const var2199 var1508 var1508-init) ; Statement: $r2 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var2199)) ; Statement: specialinvoke $r2.<javax.swing.JComboBox: void <init>()>() 

(declare-const var2199!1 var1508)
(define-const var1766 var1508 var1508-init) ; Statement: $r3 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var1766)) ; Statement: specialinvoke $r3.<javax.swing.JComboBox: void <init>()>() 

(declare-const var1766!1 var1508)
(declare-const var3568!1 var512)
(assert (not (= var3568!1 null-var512)))
(assert (= (_fontSizeCombo/-1291859940 var3568!1) var1766!1)) ; Statement: r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3 
(assert true)
(define-const var2164 ClassObject (getClass/1258963082 (cast-from-var512-to-var3678 var3568!1))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var257 var2364 (getClassLoader/-563698447 var2164)) ; Statement: r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(assert (not (= var257 null-var2364))) ; Cond: r20 != null 
(assert true)
(define-const var3206 var439 (getResource/282459787 var257 "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif")) ; Statement: $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(define-const var2911 var999 null-var999) ; Statement: r21 = null 
 ; Statement: if $r19 == null goto $r6 = new javax.swing.JButton 
(assert (= var3206 null-var439)) ; Cond: $r19 == null 
(define-const var673 var1093 var1093-init) ; Statement: $r6 = new javax.swing.JButton 
(assert true)
;(assert (<init>/-1005293566 var673 "Clear Log Table")) ; Statement: specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table") 

(declare-const var673!1 var1093)
(declare-const var1631 String)
 ; Statement: if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 
(assert (not (= var2911 null-var999))) ; Negate: Cond: r21 == null  
(assert true)
;(assert (setIcon/1650080689 (cast-from-var1093-to-var979 var673!1) (cast-from-var999-to-var2674 var2911))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setIcon(javax.swing.Icon)>(r21) 

(declare-const var673!2 var1093)
(declare-const var2911!1 var999)
(assert true) ; Non Conditional
(assert true)
;(assert (setToolTipText/33204293 (cast-from-var1093-to-var1236 var673!2) "Clear Log Table.")) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 

(declare-const var673!3 var1093)
(declare-const var2934 String)
(define-const var107 var2414 var2414-init) ; Statement: $r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29 
(assert true)
;(assert (<init>/895924084 var107 var3568!1)) ; Statement: specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var107!1 var2414)
(declare-const var3568!2 var512)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var1093-to-var979 var673!3) (cast-from-var2414-to-var829 var107!1))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7) 

(declare-const var673!4 var1093)
(declare-const var107!2 var2414)
(define-const var1082 var186 var186_getDefaultToolkit/1070133764) ; Statement: $r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>() 
(define-const var3781 Bool (_loadSystemFonts/-1291859940 var3568!2)) ; Statement: $z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert (= (ite var3781 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3896 (Array Int String) (getFontList/-357147281 var1082)) ; Statement: r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert true) ; Non Conditional
(define-const var1575 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2379 Int (getLength-Arr-String-1 var3896)) ; Statement: $i2 = lengthof r22 
 ; Statement: if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert (>= var1575 var2379)) ; Cond: i1 >= $i2 
(define-const var389 String (_fontName/-1291859940 var3568!2)) ; Statement: $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert true)
;(assert (setSelectedItem/1943063843 var2199!1 (cast-from-String-to-var3678 var389))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8) 

(declare-const var2199!2 var1508)
(declare-const var389!1 String)
(define-const var240 var1090 var1090-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30 
(assert true)
;(assert (<init>/998408842 var240 var3568!2)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var240!1 var1090)
(declare-const var3568!3 var512)
(assert true)
;(assert (addActionListener/-2124801873 var2199!2 (cast-from-var1090-to-var829 var240!1))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9) 

(declare-const var2199!3 var1508)
(declare-const var240!2 var1090)
(assert true)
;(assert (addItem/991962143 var1766!1 (cast-from-String-to-var3678 "8"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8") 

(declare-const var1766!2 var1508)
(declare-const var587 String)
(assert true)
;(assert (addItem/991962143 var1766!2 (cast-from-String-to-var3678 "9"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9") 

(declare-const var1766!3 var1508)
(declare-const var1877 String)
(assert true)
;(assert (addItem/991962143 var1766!3 (cast-from-String-to-var3678 "10"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10") 

(declare-const var1766!4 var1508)
(declare-const var414 String)
(assert true)
;(assert (addItem/991962143 var1766!4 (cast-from-String-to-var3678 "12"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12") 

(declare-const var1766!5 var1508)
(declare-const var329 String)
(assert true)
;(assert (addItem/991962143 var1766!5 (cast-from-String-to-var3678 "14"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14") 

(declare-const var1766!6 var1508)
(declare-const var1653 String)
(assert true)
;(assert (addItem/991962143 var1766!6 (cast-from-String-to-var3678 "16"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16") 

(declare-const var1766!7 var1508)
(declare-const var2617 String)
(assert true)
;(assert (addItem/991962143 var1766!7 (cast-from-String-to-var3678 "18"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18") 

(declare-const var1766!8 var1508)
(declare-const var3065 String)
(assert true)
;(assert (addItem/991962143 var1766!8 (cast-from-String-to-var3678 "24"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24") 

(declare-const var1766!9 var1508)
(declare-const var1720 String)
(define-const var1738 Int (_fontSize/-1291859940 var3568!3)) ; Statement: $i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> 
(define-const var2368 String (String_valueOf/1240665136 var1738)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setSelectedItem/1943063843 var1766!9 (cast-from-String-to-var3678 var2368))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10) 

(declare-const var1766!10 var1508)
(declare-const var2368!1 String)
(define-const var3977 var1490 var1490-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31 
(assert true)
;(assert (<init>/-168287477 var3977 var3568!3)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var3977!1 var1490)
(declare-const var3568!4 var512)
(assert true)
;(assert (addActionListener/-2124801873 var1766!10 (cast-from-var1490-to-var829 var3977!1))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var1766!11 var1508)
(declare-const var3977!2 var1490)
(define-const var2504 var448 var448-init) ; Statement: $r12 = new javax.swing.JLabel 
(assert true)
;(assert (<init>/-829434568 var2504 " Font: ")) ; Statement: specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ") 

(declare-const var2504!1 var448)
(declare-const var1572 String)
(assert true)
;(assert (add/1696452917 (cast-from-var1434-to-var2892 var3594!2) (cast-from-var448-to-var3949 var2504!1))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12) 

(declare-const var3594!3 var1434)
(declare-const var2504!2 var448)
(assert true)
;(assert (add/1696452917 (cast-from-var1434-to-var2892 var3594!3) (cast-from-var1508-to-var3949 var2199!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2) 

(declare-const var3594!4 var1434)
(declare-const var2199!4 var1508)
(assert true)
;(assert (add/1696452917 (cast-from-var1434-to-var2892 var3594!4) (cast-from-var1508-to-var3949 var1766!11))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3) 

(declare-const var3594!5 var1434)
(declare-const var1766!12 var1508)
(assert true)
;(assert (addSeparator/-692065624 var3594!5)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var3594!6 var1434)
(assert true)
;(assert (addSeparator/-692065624 var3594!6)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var3594!7 var1434)
(assert true)
;(assert (add/1696452917 (cast-from-var1434-to-var2892 var3594!7) (cast-from-var1093-to-var3949 var673!4))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6) 

(declare-const var3594!8 var1434)
(declare-const var673!5 var1093)
(assert true)
;(assert (setAlignmentY/-1214558670 (cast-from-var1093-to-var1236 var673!5) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F) 

(declare-const var673!6 var1093)
(declare-const var1963 Float32)
(assert true)
;(assert (setAlignmentX/592895793 (cast-from-var1093-to-var1236 var673!6) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F) 

(declare-const var673!7 var1093)
(declare-const var1963!1 Float32)
(assert true)
(define-const var3852 var2638 (getPreferredSize/784517592 (cast-from-var1508-to-var1236 var2199!4))) ; Statement: $r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var1508-to-var1236 var2199!4) var3852)) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13) 

(declare-const var2199!5 var1508)
(declare-const var3852!1 var2638)
(assert true)
(define-const var654 var2638 (getPreferredSize/784517592 (cast-from-var1508-to-var1236 var1766!12))) ; Statement: $r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var1508-to-var1236 var1766!12) var654)) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14) 

(declare-const var1766!13 var1508)
(declare-const var654!1 var2638)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1434-init=([], javax.swing.JToolBar), <init>/954685434=([javax.swing.JToolBar], void), putClientProperty/-942553159=([javax.swing.JComponent, java.lang.Object, java.lang.Object], void), cast-from-var1434-to-var1236=([javax.swing.JToolBar], javax.swing.JComponent), cast-from-String-to-var3678=([java.lang.String], java.lang.Object), cast-from-var2774-to-var3678=([java.lang.Boolean], java.lang.Object), var1508-init=([], javax.swing.JComboBox), <init>/31412616=([javax.swing.JComboBox], void), _fontSizeCombo/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JComboBox), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var512-to-var3678=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var1093-init=([], javax.swing.JButton), <init>/-1005293566=([javax.swing.JButton, java.lang.String], void), setIcon/1650080689=([javax.swing.AbstractButton, javax.swing.Icon], void), cast-from-var1093-to-var979=([javax.swing.JButton], javax.swing.AbstractButton), cast-from-var999-to-var2674=([javax.swing.ImageIcon], javax.swing.Icon), setToolTipText/33204293=([javax.swing.JComponent, java.lang.String], void), cast-from-var1093-to-var1236=([javax.swing.JButton], javax.swing.JComponent), var2414-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$29), <init>/895924084=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var2414-to-var829=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29], java.awt.event.ActionListener), var186_getDefaultToolkit/1070133764=([], java.awt.Toolkit), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), getFontList/-357147281=([java.awt.Toolkit], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void), var1090-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$30), <init>/998408842=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-2124801873=([javax.swing.JComboBox, java.awt.event.ActionListener], void), cast-from-var1090-to-var829=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30], java.awt.event.ActionListener), addItem/991962143=([javax.swing.JComboBox, java.lang.Object], void), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), String_valueOf/1240665136=([int], java.lang.String), var1490-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$31), <init>/-168287477=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), cast-from-var1490-to-var829=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31], java.awt.event.ActionListener), var448-init=([], javax.swing.JLabel), <init>/-829434568=([javax.swing.JLabel, java.lang.String], void), add/1696452917=([java.awt.Container, java.awt.Component], java.awt.Component), cast-from-var1434-to-var2892=([javax.swing.JToolBar], java.awt.Container), cast-from-var448-to-var3949=([javax.swing.JLabel], java.awt.Component), cast-from-var1508-to-var3949=([javax.swing.JComboBox], java.awt.Component), addSeparator/-692065624=([javax.swing.JToolBar], void), cast-from-var1093-to-var3949=([javax.swing.JButton], java.awt.Component), setAlignmentY/-1214558670=([javax.swing.JComponent, float], void), setAlignmentX/592895793=([javax.swing.JComponent, float], void), getPreferredSize/784517592=([javax.swing.JComponent], java.awt.Dimension), cast-from-var1508-to-var1236=([javax.swing.JComboBox], javax.swing.JComponent), setMaximumSize/1529350009=([javax.swing.JComponent, java.awt.Dimension], void)}
; {var512=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3568=r4, var1434=javax.swing.JToolBar, var3594=$r0, var2774=java.lang.Boolean, var1048=$r1, var1236=javax.swing.JComponent, var3678=java.lang.Object, var1257="JToolBar.isRollover", var1508=javax.swing.JComboBox, var2199=$r2, var1766=$r3, var2164=$r5, var2364=java.lang.ClassLoader, var257=r20, var439=java.net.URL, var3206=$r19, var999=javax.swing.ImageIcon, var2911=r21, var1093=javax.swing.JButton, var673=$r6, var1631="Clear Log Table", var979=javax.swing.AbstractButton, var2674=javax.swing.Icon, var2934="Clear Log Table.", var2414=org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, var107=$r7, var829=java.awt.event.ActionListener, var186=java.awt.Toolkit, var1082=$r17, var3781=$z0, var3896=r22, var1575=i1, var2379=$i2, var389=$r8, var1090=org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, var240=$r9, var587="8", var1877="9", var414="10", var329="12", var1653="14", var2617="16", var3065="18", var1720="24", var1738=$i0, var2368=$r10, var1490=org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, var3977=$r11, var448=javax.swing.JLabel, var2504=$r12, var1572=" Font: ", var2892=java.awt.Container, var3949=java.awt.Component, var1963=0.5F, var2638=java.awt.Dimension, var3852=$r13, var654=$r14}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var512, r4=var3568, javax.swing.JToolBar=var1434, $r0=var3594, java.lang.Boolean=var2774, $r1=var1048, javax.swing.JComponent=var1236, java.lang.Object=var3678, "JToolBar.isRollover"=var1257, javax.swing.JComboBox=var1508, $r2=var2199, $r3=var1766, $r5=var2164, java.lang.ClassLoader=var2364, r20=var257, java.net.URL=var439, $r19=var3206, javax.swing.ImageIcon=var999, r21=var2911, javax.swing.JButton=var1093, $r6=var673, "Clear Log Table"=var1631, javax.swing.AbstractButton=var979, javax.swing.Icon=var2674, "Clear Log Table."=var2934, org.apache.log4j.lf5.viewer.LogBrokerMonitor$29=var2414, $r7=var107, java.awt.event.ActionListener=var829, java.awt.Toolkit=var186, $r17=var1082, $z0=var3781, r22=var3896, i1=var1575, $i2=var2379, $r8=var389, org.apache.log4j.lf5.viewer.LogBrokerMonitor$30=var1090, $r9=var240, "8"=var587, "9"=var1877, "10"=var414, "12"=var329, "14"=var1653, "16"=var2617, "18"=var3065, "24"=var1720, $i0=var1738, $r10=var2368, org.apache.log4j.lf5.viewer.LogBrokerMonitor$31=var1490, $r11=var3977, javax.swing.JLabel=var448, $r12=var2504, " Font: "=var1572, java.awt.Container=var2892, java.awt.Component=var3949, 0.5F=var1963, java.awt.Dimension=var2638, $r13=var3852, $r14=var654}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new javax.swing.JToolBar;	specialinvoke $r0.<javax.swing.JToolBar: void <init>()>();	$r1 = <java.lang.Boolean: java.lang.Boolean TRUE>;	virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1);	$r2 = new javax.swing.JComboBox;	specialinvoke $r2.<javax.swing.JComboBox: void <init>()>();	$r3 = new javax.swing.JComboBox;	specialinvoke $r3.<javax.swing.JComboBox: void <init>()>();	r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3;	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	$r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r21 = null;	if $r19 == null goto $r6 = new javax.swing.JButton;	$r6 = new javax.swing.JButton;	specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table");	if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	virtualinvoke $r6.<javax.swing.JButton: void setIcon(javax.swing.Icon)>(r21);	virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	$r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29;	specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7);	$r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>();	$z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts>;	if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	i1 = 0;	$i2 = lengthof r22;	if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	$r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8);	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9);	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24");	$i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize>;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11);	$r12 = new javax.swing.JLabel;	specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ");	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3);	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F);	$r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13);	$r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14);	return $r0
;block_num 9