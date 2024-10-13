(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var639 0)
(declare-sort var3096 0)
(declare-sort var1212 0)
(declare-sort var3347 0)
(declare-sort var301 0)
(declare-sort var2934 0)
(declare-sort var1515 0)
(declare-sort var3009 0)
(declare-sort var1300 0)
(declare-sort var1533 0)
(declare-sort var2595 0)
(declare-sort var3826 0)
(declare-sort var283 0)
(declare-sort var953 0)
(declare-sort var843 0)
(declare-sort var1733 0)
(declare-sort var2442 0)
(declare-sort var2011 0)
(declare-sort var2310 0)
(declare-sort var2560 0)
(declare-sort var3947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3096-init () var3096)
(declare-fun <init>/954685434 (var3096) void)
(declare-fun putClientProperty/-942553159 (var3347 var301 var301) void)
(declare-fun cast-from-var3096-to-var3347 (var3096) var3347)
(declare-fun cast-from-String-to-var301 (String) var301)
(declare-fun cast-from-var1212-to-var301 (var1212) var301)
(declare-fun var2934-init () var2934)
(declare-fun <init>/31412616 (var2934) void)
(declare-fun _fontSizeCombo/-1291859940 (var639) var2934)
(declare-fun getClass/1258963082 (var301) ClassObject)
(declare-fun cast-from-var639-to-var301 (var639) var301)
(declare-fun getClassLoader/-563698447 (ClassObject) var1515)
(declare-fun getResource/282459787 (var1515 String) var3009)
(declare-fun var1300-init () var1300)
(declare-fun <init>/1799551303 (var1300 var3009) void)
(declare-fun var1533-init () var1533)
(declare-fun <init>/-1005293566 (var1533 String) void)
(declare-fun setToolTipText/33204293 (var3347 String) void)
(declare-fun cast-from-var1533-to-var3347 (var1533) var3347)
(declare-fun var2595-init () var2595)
(declare-fun <init>/895924084 (var2595 var639) void)
(declare-fun addActionListener/-1143302268 (var3826 var283) void)
(declare-fun cast-from-var1533-to-var3826 (var1533) var3826)
(declare-fun cast-from-var2595-to-var283 (var2595) var283)
(declare-fun var953_getDefaultToolkit/1070133764 () var953)
(declare-fun _loadSystemFonts/-1291859940 (var639) Bool)
(declare-fun var843_getLocalGraphicsEnvironment/1274578704 () var843)
(declare-fun getAvailableFontFamilyNames/1396040614 (var843) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun _fontName/-1291859940 (var639) String)
(declare-fun setSelectedItem/1943063843 (var2934 var301) void)
(declare-fun var1733-init () var1733)
(declare-fun <init>/998408842 (var1733 var639) void)
(declare-fun addActionListener/-2124801873 (var2934 var283) void)
(declare-fun cast-from-var1733-to-var283 (var1733) var283)
(declare-fun addItem/991962143 (var2934 var301) void)
(declare-fun _fontSize/-1291859940 (var639) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var2442-init () var2442)
(declare-fun <init>/-168287477 (var2442 var639) void)
(declare-fun cast-from-var2442-to-var283 (var2442) var283)
(declare-fun var2011-init () var2011)
(declare-fun <init>/-829434568 (var2011 String) void)
(declare-fun add/1696452917 (var2310 var2560) var2560)
(declare-fun cast-from-var3096-to-var2310 (var3096) var2310)
(declare-fun cast-from-var2011-to-var2560 (var2011) var2560)
(declare-fun cast-from-var2934-to-var2560 (var2934) var2560)
(declare-fun addSeparator/-692065624 (var3096) void)
(declare-fun cast-from-var1533-to-var2560 (var1533) var2560)
(declare-fun setAlignmentY/-1214558670 (var3347 Float32) void)
(declare-fun setAlignmentX/592895793 (var3347 Float32) void)
(declare-fun getPreferredSize/784517592 (var3347) var3947)
(declare-fun cast-from-var2934-to-var3347 (var2934) var3347)
(declare-fun setMaximumSize/1529350009 (var3347 var3947) void)
(declare-const null-var639 var639)
(declare-const var1212-TRUE var1212)
(declare-const null-var1515 var1515)
(declare-const null-var1300 var1300)
(declare-const null-var3009 var3009)
(declare-const var78 var639) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var78 null-var639)))
(define-const var394 var3096 var3096-init) ; Statement: $r0 = new javax.swing.JToolBar 
(assert true)
;(assert (<init>/954685434 var394)) ; Statement: specialinvoke $r0.<javax.swing.JToolBar: void <init>()>() 

(declare-const var394!1 var3096)
(define-const var3575 var1212 var1212-TRUE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
;(assert (putClientProperty/-942553159 (cast-from-var3096-to-var3347 var394!1) (cast-from-String-to-var301 "JToolBar.isRollover") (cast-from-var1212-to-var301 var3575))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1) 

(declare-const var394!2 var3096)
(declare-const var2600 String)
(declare-const var3575!1 var1212)
(define-const var3930 var2934 var2934-init) ; Statement: $r2 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var3930)) ; Statement: specialinvoke $r2.<javax.swing.JComboBox: void <init>()>() 

(declare-const var3930!1 var2934)
(define-const var902 var2934 var2934-init) ; Statement: $r3 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var902)) ; Statement: specialinvoke $r3.<javax.swing.JComboBox: void <init>()>() 

(declare-const var902!1 var2934)
(declare-const var78!1 var639)
(assert (not (= var78!1 null-var639)))
(assert (= (_fontSizeCombo/-1291859940 var78!1) var902!1)) ; Statement: r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3 
(assert true)
(define-const var425 ClassObject (getClass/1258963082 (cast-from-var639-to-var301 var78!1))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3461 var1515 (getClassLoader/-563698447 var425)) ; Statement: r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(assert (not (= var3461 null-var1515))) ; Cond: r20 != null 
(assert true)
(define-const var3337 var3009 (getResource/282459787 var3461 "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif")) ; Statement: $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(define-const var1845 var1300 null-var1300) ; Statement: r21 = null 
 ; Statement: if $r19 == null goto $r6 = new javax.swing.JButton 
(assert (not (= var3337 null-var3009))) ; Negate: Cond: $r19 == null  
(define-const var3881 var1300 var1300-init) ; Statement: $r18 = new javax.swing.ImageIcon 
(assert true)
;(assert (<init>/1799551303 var3881 var3337)) ; Statement: specialinvoke $r18.<javax.swing.ImageIcon: void <init>(java.net.URL)>($r19) 

(declare-const var3881!1 var1300)
(declare-const var3337!1 var3009)
(define-const var1845!1 var1300 var3881!1) ; Statement: r21 = $r18 
(assert true) ; Non Conditional
(define-const var1214 var1533 var1533-init) ; Statement: $r6 = new javax.swing.JButton 
(assert true)
;(assert (<init>/-1005293566 var1214 "Clear Log Table")) ; Statement: specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table") 

(declare-const var1214!1 var1533)
(declare-const var3142 String)
 ; Statement: if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 
(assert (= var1845!1 null-var1300)) ; Cond: r21 == null 
(assert true)
;(assert (setToolTipText/33204293 (cast-from-var1533-to-var3347 var1214!1) "Clear Log Table.")) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 

(declare-const var1214!2 var1533)
(declare-const var3894 String)
(define-const var1757 var2595 var2595-init) ; Statement: $r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29 
(assert true)
;(assert (<init>/895924084 var1757 var78!1)) ; Statement: specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var1757!1 var2595)
(declare-const var78!2 var639)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var1533-to-var3826 var1214!2) (cast-from-var2595-to-var283 var1757!1))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7) 

(declare-const var1214!3 var1533)
(declare-const var1757!2 var2595)
(define-const var3030 var953 var953_getDefaultToolkit/1070133764) ; Statement: $r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>() 
(define-const var1386 Bool (_loadSystemFonts/-1291859940 var78!2)) ; Statement: $z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert (not (= (ite var1386 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var739 var843 var843_getLocalGraphicsEnvironment/1274578704) ; Statement: $r16 = staticinvoke <java.awt.GraphicsEnvironment: java.awt.GraphicsEnvironment getLocalGraphicsEnvironment()>() 
(assert true)
(define-const var1630 (Array Int String) (getAvailableFontFamilyNames/1396040614 var739)) ; Statement: r22 = virtualinvoke $r16.<java.awt.GraphicsEnvironment: java.lang.String[] getAvailableFontFamilyNames()>() 
 ; Statement: goto [?= i1 = 0] 
(assert true) ; Non Conditional
(define-const var1807 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1811 Int (getLength-Arr-String-1 var1630)) ; Statement: $i2 = lengthof r22 
 ; Statement: if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert (>= var1807 var1811)) ; Cond: i1 >= $i2 
(define-const var1677 String (_fontName/-1291859940 var78!2)) ; Statement: $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert true)
;(assert (setSelectedItem/1943063843 var3930!1 (cast-from-String-to-var301 var1677))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8) 

(declare-const var3930!2 var2934)
(declare-const var1677!1 String)
(define-const var3775 var1733 var1733-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30 
(assert true)
;(assert (<init>/998408842 var3775 var78!2)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var3775!1 var1733)
(declare-const var78!3 var639)
(assert true)
;(assert (addActionListener/-2124801873 var3930!2 (cast-from-var1733-to-var283 var3775!1))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9) 

(declare-const var3930!3 var2934)
(declare-const var3775!2 var1733)
(assert true)
;(assert (addItem/991962143 var902!1 (cast-from-String-to-var301 "8"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8") 

(declare-const var902!2 var2934)
(declare-const var733 String)
(assert true)
;(assert (addItem/991962143 var902!2 (cast-from-String-to-var301 "9"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9") 

(declare-const var902!3 var2934)
(declare-const var2406 String)
(assert true)
;(assert (addItem/991962143 var902!3 (cast-from-String-to-var301 "10"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10") 

(declare-const var902!4 var2934)
(declare-const var3873 String)
(assert true)
;(assert (addItem/991962143 var902!4 (cast-from-String-to-var301 "12"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12") 

(declare-const var902!5 var2934)
(declare-const var1937 String)
(assert true)
;(assert (addItem/991962143 var902!5 (cast-from-String-to-var301 "14"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14") 

(declare-const var902!6 var2934)
(declare-const var2427 String)
(assert true)
;(assert (addItem/991962143 var902!6 (cast-from-String-to-var301 "16"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16") 

(declare-const var902!7 var2934)
(declare-const var3304 String)
(assert true)
;(assert (addItem/991962143 var902!7 (cast-from-String-to-var301 "18"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18") 

(declare-const var902!8 var2934)
(declare-const var2872 String)
(assert true)
;(assert (addItem/991962143 var902!8 (cast-from-String-to-var301 "24"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24") 

(declare-const var902!9 var2934)
(declare-const var2262 String)
(define-const var1748 Int (_fontSize/-1291859940 var78!3)) ; Statement: $i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> 
(define-const var911 String (String_valueOf/1240665136 var1748)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setSelectedItem/1943063843 var902!9 (cast-from-String-to-var301 var911))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10) 

(declare-const var902!10 var2934)
(declare-const var911!1 String)
(define-const var959 var2442 var2442-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31 
(assert true)
;(assert (<init>/-168287477 var959 var78!3)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var959!1 var2442)
(declare-const var78!4 var639)
(assert true)
;(assert (addActionListener/-2124801873 var902!10 (cast-from-var2442-to-var283 var959!1))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var902!11 var2934)
(declare-const var959!2 var2442)
(define-const var573 var2011 var2011-init) ; Statement: $r12 = new javax.swing.JLabel 
(assert true)
;(assert (<init>/-829434568 var573 " Font: ")) ; Statement: specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ") 

(declare-const var573!1 var2011)
(declare-const var1830 String)
(assert true)
;(assert (add/1696452917 (cast-from-var3096-to-var2310 var394!2) (cast-from-var2011-to-var2560 var573!1))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12) 

(declare-const var394!3 var3096)
(declare-const var573!2 var2011)
(assert true)
;(assert (add/1696452917 (cast-from-var3096-to-var2310 var394!3) (cast-from-var2934-to-var2560 var3930!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2) 

(declare-const var394!4 var3096)
(declare-const var3930!4 var2934)
(assert true)
;(assert (add/1696452917 (cast-from-var3096-to-var2310 var394!4) (cast-from-var2934-to-var2560 var902!11))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3) 

(declare-const var394!5 var3096)
(declare-const var902!12 var2934)
(assert true)
;(assert (addSeparator/-692065624 var394!5)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var394!6 var3096)
(assert true)
;(assert (addSeparator/-692065624 var394!6)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var394!7 var3096)
(assert true)
;(assert (add/1696452917 (cast-from-var3096-to-var2310 var394!7) (cast-from-var1533-to-var2560 var1214!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6) 

(declare-const var394!8 var3096)
(declare-const var1214!4 var1533)
(assert true)
;(assert (setAlignmentY/-1214558670 (cast-from-var1533-to-var3347 var1214!4) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F) 

(declare-const var1214!5 var1533)
(declare-const var1086 Float32)
(assert true)
;(assert (setAlignmentX/592895793 (cast-from-var1533-to-var3347 var1214!5) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F) 

(declare-const var1214!6 var1533)
(declare-const var1086!1 Float32)
(assert true)
(define-const var1474 var3947 (getPreferredSize/784517592 (cast-from-var2934-to-var3347 var3930!4))) ; Statement: $r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var2934-to-var3347 var3930!4) var1474)) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13) 

(declare-const var3930!5 var2934)
(declare-const var1474!1 var3947)
(assert true)
(define-const var939 var3947 (getPreferredSize/784517592 (cast-from-var2934-to-var3347 var902!12))) ; Statement: $r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var2934-to-var3347 var902!12) var939)) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14) 

(declare-const var902!13 var2934)
(declare-const var939!1 var3947)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3096-init=([], javax.swing.JToolBar), <init>/954685434=([javax.swing.JToolBar], void), putClientProperty/-942553159=([javax.swing.JComponent, java.lang.Object, java.lang.Object], void), cast-from-var3096-to-var3347=([javax.swing.JToolBar], javax.swing.JComponent), cast-from-String-to-var301=([java.lang.String], java.lang.Object), cast-from-var1212-to-var301=([java.lang.Boolean], java.lang.Object), var2934-init=([], javax.swing.JComboBox), <init>/31412616=([javax.swing.JComboBox], void), _fontSizeCombo/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JComboBox), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var639-to-var301=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var1300-init=([], javax.swing.ImageIcon), <init>/1799551303=([javax.swing.ImageIcon, java.net.URL], void), var1533-init=([], javax.swing.JButton), <init>/-1005293566=([javax.swing.JButton, java.lang.String], void), setToolTipText/33204293=([javax.swing.JComponent, java.lang.String], void), cast-from-var1533-to-var3347=([javax.swing.JButton], javax.swing.JComponent), var2595-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$29), <init>/895924084=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var1533-to-var3826=([javax.swing.JButton], javax.swing.AbstractButton), cast-from-var2595-to-var283=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29], java.awt.event.ActionListener), var953_getDefaultToolkit/1070133764=([], java.awt.Toolkit), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), var843_getLocalGraphicsEnvironment/1274578704=([], java.awt.GraphicsEnvironment), getAvailableFontFamilyNames/1396040614=([java.awt.GraphicsEnvironment], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void), var1733-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$30), <init>/998408842=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-2124801873=([javax.swing.JComboBox, java.awt.event.ActionListener], void), cast-from-var1733-to-var283=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30], java.awt.event.ActionListener), addItem/991962143=([javax.swing.JComboBox, java.lang.Object], void), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), String_valueOf/1240665136=([int], java.lang.String), var2442-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$31), <init>/-168287477=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), cast-from-var2442-to-var283=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31], java.awt.event.ActionListener), var2011-init=([], javax.swing.JLabel), <init>/-829434568=([javax.swing.JLabel, java.lang.String], void), add/1696452917=([java.awt.Container, java.awt.Component], java.awt.Component), cast-from-var3096-to-var2310=([javax.swing.JToolBar], java.awt.Container), cast-from-var2011-to-var2560=([javax.swing.JLabel], java.awt.Component), cast-from-var2934-to-var2560=([javax.swing.JComboBox], java.awt.Component), addSeparator/-692065624=([javax.swing.JToolBar], void), cast-from-var1533-to-var2560=([javax.swing.JButton], java.awt.Component), setAlignmentY/-1214558670=([javax.swing.JComponent, float], void), setAlignmentX/592895793=([javax.swing.JComponent, float], void), getPreferredSize/784517592=([javax.swing.JComponent], java.awt.Dimension), cast-from-var2934-to-var3347=([javax.swing.JComboBox], javax.swing.JComponent), setMaximumSize/1529350009=([javax.swing.JComponent, java.awt.Dimension], void)}
; {var639=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var78=r4, var3096=javax.swing.JToolBar, var394=$r0, var1212=java.lang.Boolean, var3575=$r1, var3347=javax.swing.JComponent, var301=java.lang.Object, var2600="JToolBar.isRollover", var2934=javax.swing.JComboBox, var3930=$r2, var902=$r3, var425=$r5, var1515=java.lang.ClassLoader, var3461=r20, var3009=java.net.URL, var3337=$r19, var1300=javax.swing.ImageIcon, var1845=r21, var3881=$r18, var1533=javax.swing.JButton, var1214=$r6, var3142="Clear Log Table", var3894="Clear Log Table.", var2595=org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, var1757=$r7, var3826=javax.swing.AbstractButton, var283=java.awt.event.ActionListener, var953=java.awt.Toolkit, var3030=$r17, var1386=$z0, var843=java.awt.GraphicsEnvironment, var739=$r16, var1630=r22, var1807=i1, var1811=$i2, var1677=$r8, var1733=org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, var3775=$r9, var733="8", var2406="9", var3873="10", var1937="12", var2427="14", var3304="16", var2872="18", var2262="24", var1748=$i0, var911=$r10, var2442=org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, var959=$r11, var2011=javax.swing.JLabel, var573=$r12, var1830=" Font: ", var2310=java.awt.Container, var2560=java.awt.Component, var1086=0.5F, var3947=java.awt.Dimension, var1474=$r13, var939=$r14}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var639, r4=var78, javax.swing.JToolBar=var3096, $r0=var394, java.lang.Boolean=var1212, $r1=var3575, javax.swing.JComponent=var3347, java.lang.Object=var301, "JToolBar.isRollover"=var2600, javax.swing.JComboBox=var2934, $r2=var3930, $r3=var902, $r5=var425, java.lang.ClassLoader=var1515, r20=var3461, java.net.URL=var3009, $r19=var3337, javax.swing.ImageIcon=var1300, r21=var1845, $r18=var3881, javax.swing.JButton=var1533, $r6=var1214, "Clear Log Table"=var3142, "Clear Log Table."=var3894, org.apache.log4j.lf5.viewer.LogBrokerMonitor$29=var2595, $r7=var1757, javax.swing.AbstractButton=var3826, java.awt.event.ActionListener=var283, java.awt.Toolkit=var953, $r17=var3030, $z0=var1386, java.awt.GraphicsEnvironment=var843, $r16=var739, r22=var1630, i1=var1807, $i2=var1811, $r8=var1677, org.apache.log4j.lf5.viewer.LogBrokerMonitor$30=var1733, $r9=var3775, "8"=var733, "9"=var2406, "10"=var3873, "12"=var1937, "14"=var2427, "16"=var3304, "18"=var2872, "24"=var2262, $i0=var1748, $r10=var911, org.apache.log4j.lf5.viewer.LogBrokerMonitor$31=var2442, $r11=var959, javax.swing.JLabel=var2011, $r12=var573, " Font: "=var1830, java.awt.Container=var2310, java.awt.Component=var2560, 0.5F=var1086, java.awt.Dimension=var3947, $r13=var1474, $r14=var939}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new javax.swing.JToolBar;	specialinvoke $r0.<javax.swing.JToolBar: void <init>()>();	$r1 = <java.lang.Boolean: java.lang.Boolean TRUE>;	virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1);	$r2 = new javax.swing.JComboBox;	specialinvoke $r2.<javax.swing.JComboBox: void <init>()>();	$r3 = new javax.swing.JComboBox;	specialinvoke $r3.<javax.swing.JComboBox: void <init>()>();	r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3;	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	$r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r21 = null;	if $r19 == null goto $r6 = new javax.swing.JButton;	$r18 = new javax.swing.ImageIcon;	specialinvoke $r18.<javax.swing.ImageIcon: void <init>(java.net.URL)>($r19);	r21 = $r18;	$r6 = new javax.swing.JButton;	specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table");	if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	$r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29;	specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7);	$r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>();	$z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts>;	if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	$r16 = staticinvoke <java.awt.GraphicsEnvironment: java.awt.GraphicsEnvironment getLocalGraphicsEnvironment()>();	r22 = virtualinvoke $r16.<java.awt.GraphicsEnvironment: java.lang.String[] getAvailableFontFamilyNames()>();	goto [?= i1 = 0];	i1 = 0;	$i2 = lengthof r22;	if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	$r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8);	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9);	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24");	$i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize>;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11);	$r12 = new javax.swing.JLabel;	specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ");	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3);	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F);	$r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13);	$r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14);	return $r0
;block_num 9