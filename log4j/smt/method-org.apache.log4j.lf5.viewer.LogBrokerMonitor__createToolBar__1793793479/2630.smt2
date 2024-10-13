(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1039 0)
(declare-sort var955 0)
(declare-sort var2373 0)
(declare-sort var2759 0)
(declare-sort var575 0)
(declare-sort var8 0)
(declare-sort var3345 0)
(declare-sort var3856 0)
(declare-sort var2106 0)
(declare-sort var1877 0)
(declare-sort var1875 0)
(declare-sort var766 0)
(declare-sort var1237 0)
(declare-sort var3966 0)
(declare-sort var3881 0)
(declare-sort var3734 0)
(declare-sort var3724 0)
(declare-sort var1429 0)
(declare-sort var241 0)
(declare-sort var1570 0)
(declare-sort var2396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var955-init () var955)
(declare-fun <init>/954685434 (var955) void)
(declare-fun putClientProperty/-942553159 (var2759 var575 var575) void)
(declare-fun cast-from-var955-to-var2759 (var955) var2759)
(declare-fun cast-from-String-to-var575 (String) var575)
(declare-fun cast-from-var2373-to-var575 (var2373) var575)
(declare-fun var8-init () var8)
(declare-fun <init>/31412616 (var8) void)
(declare-fun _fontSizeCombo/-1291859940 (var1039) var8)
(declare-fun getClass/1258963082 (var575) ClassObject)
(declare-fun cast-from-var1039-to-var575 (var1039) var575)
(declare-fun getClassLoader/-563698447 (ClassObject) var3345)
(declare-fun getResource/282459787 (var3345 String) var3856)
(declare-fun var1877-init () var1877)
(declare-fun <init>/-1005293566 (var1877 String) void)
(declare-fun setToolTipText/33204293 (var2759 String) void)
(declare-fun cast-from-var1877-to-var2759 (var1877) var2759)
(declare-fun var1875-init () var1875)
(declare-fun <init>/895924084 (var1875 var1039) void)
(declare-fun addActionListener/-1143302268 (var766 var1237) void)
(declare-fun cast-from-var1877-to-var766 (var1877) var766)
(declare-fun cast-from-var1875-to-var1237 (var1875) var1237)
(declare-fun var3966_getDefaultToolkit/1070133764 () var3966)
(declare-fun _loadSystemFonts/-1291859940 (var1039) Bool)
(declare-fun var3881_getLocalGraphicsEnvironment/1274578704 () var3881)
(declare-fun getAvailableFontFamilyNames/1396040614 (var3881) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun _fontName/-1291859940 (var1039) String)
(declare-fun setSelectedItem/1943063843 (var8 var575) void)
(declare-fun var3734-init () var3734)
(declare-fun <init>/998408842 (var3734 var1039) void)
(declare-fun addActionListener/-2124801873 (var8 var1237) void)
(declare-fun cast-from-var3734-to-var1237 (var3734) var1237)
(declare-fun addItem/991962143 (var8 var575) void)
(declare-fun _fontSize/-1291859940 (var1039) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var3724-init () var3724)
(declare-fun <init>/-168287477 (var3724 var1039) void)
(declare-fun cast-from-var3724-to-var1237 (var3724) var1237)
(declare-fun var1429-init () var1429)
(declare-fun <init>/-829434568 (var1429 String) void)
(declare-fun add/1696452917 (var241 var1570) var1570)
(declare-fun cast-from-var955-to-var241 (var955) var241)
(declare-fun cast-from-var1429-to-var1570 (var1429) var1570)
(declare-fun cast-from-var8-to-var1570 (var8) var1570)
(declare-fun addSeparator/-692065624 (var955) void)
(declare-fun cast-from-var1877-to-var1570 (var1877) var1570)
(declare-fun setAlignmentY/-1214558670 (var2759 Float32) void)
(declare-fun setAlignmentX/592895793 (var2759 Float32) void)
(declare-fun getPreferredSize/784517592 (var2759) var2396)
(declare-fun cast-from-var8-to-var2759 (var8) var2759)
(declare-fun setMaximumSize/1529350009 (var2759 var2396) void)
(declare-const null-var1039 var1039)
(declare-const var2373-TRUE var2373)
(declare-const null-var3345 var3345)
(declare-const null-var2106 var2106)
(declare-const null-var3856 var3856)
(declare-const var2690 var1039) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2690 null-var1039)))
(define-const var1835 var955 var955-init) ; Statement: $r0 = new javax.swing.JToolBar 
(assert true)
;(assert (<init>/954685434 var1835)) ; Statement: specialinvoke $r0.<javax.swing.JToolBar: void <init>()>() 

(declare-const var1835!1 var955)
(define-const var2098 var2373 var2373-TRUE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
;(assert (putClientProperty/-942553159 (cast-from-var955-to-var2759 var1835!1) (cast-from-String-to-var575 "JToolBar.isRollover") (cast-from-var2373-to-var575 var2098))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1) 

(declare-const var1835!2 var955)
(declare-const var2694 String)
(declare-const var2098!1 var2373)
(define-const var686 var8 var8-init) ; Statement: $r2 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var686)) ; Statement: specialinvoke $r2.<javax.swing.JComboBox: void <init>()>() 

(declare-const var686!1 var8)
(define-const var1812 var8 var8-init) ; Statement: $r3 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var1812)) ; Statement: specialinvoke $r3.<javax.swing.JComboBox: void <init>()>() 

(declare-const var1812!1 var8)
(declare-const var2690!1 var1039)
(assert (not (= var2690!1 null-var1039)))
(assert (= (_fontSizeCombo/-1291859940 var2690!1) var1812!1)) ; Statement: r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3 
(assert true)
(define-const var1657 ClassObject (getClass/1258963082 (cast-from-var1039-to-var575 var2690!1))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var340 var3345 (getClassLoader/-563698447 var1657)) ; Statement: r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(assert (not (= var340 null-var3345))) ; Cond: r20 != null 
(assert true)
(define-const var1106 var3856 (getResource/282459787 var340 "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif")) ; Statement: $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(define-const var3329 var2106 null-var2106) ; Statement: r21 = null 
 ; Statement: if $r19 == null goto $r6 = new javax.swing.JButton 
(assert (= var1106 null-var3856)) ; Cond: $r19 == null 
(define-const var218 var1877 var1877-init) ; Statement: $r6 = new javax.swing.JButton 
(assert true)
;(assert (<init>/-1005293566 var218 "Clear Log Table")) ; Statement: specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table") 

(declare-const var218!1 var1877)
(declare-const var1790 String)
 ; Statement: if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 
(assert (= var3329 null-var2106)) ; Cond: r21 == null 
(assert true)
;(assert (setToolTipText/33204293 (cast-from-var1877-to-var2759 var218!1) "Clear Log Table.")) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 

(declare-const var218!2 var1877)
(declare-const var2644 String)
(define-const var3803 var1875 var1875-init) ; Statement: $r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29 
(assert true)
;(assert (<init>/895924084 var3803 var2690!1)) ; Statement: specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var3803!1 var1875)
(declare-const var2690!2 var1039)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var1877-to-var766 var218!2) (cast-from-var1875-to-var1237 var3803!1))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7) 

(declare-const var218!3 var1877)
(declare-const var3803!2 var1875)
(define-const var1964 var3966 var3966_getDefaultToolkit/1070133764) ; Statement: $r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>() 
(define-const var2254 Bool (_loadSystemFonts/-1291859940 var2690!2)) ; Statement: $z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert (not (= (ite var2254 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var760 var3881 var3881_getLocalGraphicsEnvironment/1274578704) ; Statement: $r16 = staticinvoke <java.awt.GraphicsEnvironment: java.awt.GraphicsEnvironment getLocalGraphicsEnvironment()>() 
(assert true)
(define-const var608 (Array Int String) (getAvailableFontFamilyNames/1396040614 var760)) ; Statement: r22 = virtualinvoke $r16.<java.awt.GraphicsEnvironment: java.lang.String[] getAvailableFontFamilyNames()>() 
 ; Statement: goto [?= i1 = 0] 
(assert true) ; Non Conditional
(define-const var3538 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1253 Int (getLength-Arr-String-1 var608)) ; Statement: $i2 = lengthof r22 
 ; Statement: if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert (>= var3538 var1253)) ; Cond: i1 >= $i2 
(define-const var3568 String (_fontName/-1291859940 var2690!2)) ; Statement: $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert true)
;(assert (setSelectedItem/1943063843 var686!1 (cast-from-String-to-var575 var3568))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8) 

(declare-const var686!2 var8)
(declare-const var3568!1 String)
(define-const var3109 var3734 var3734-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30 
(assert true)
;(assert (<init>/998408842 var3109 var2690!2)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var3109!1 var3734)
(declare-const var2690!3 var1039)
(assert true)
;(assert (addActionListener/-2124801873 var686!2 (cast-from-var3734-to-var1237 var3109!1))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9) 

(declare-const var686!3 var8)
(declare-const var3109!2 var3734)
(assert true)
;(assert (addItem/991962143 var1812!1 (cast-from-String-to-var575 "8"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8") 

(declare-const var1812!2 var8)
(declare-const var152 String)
(assert true)
;(assert (addItem/991962143 var1812!2 (cast-from-String-to-var575 "9"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9") 

(declare-const var1812!3 var8)
(declare-const var3362 String)
(assert true)
;(assert (addItem/991962143 var1812!3 (cast-from-String-to-var575 "10"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10") 

(declare-const var1812!4 var8)
(declare-const var1918 String)
(assert true)
;(assert (addItem/991962143 var1812!4 (cast-from-String-to-var575 "12"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12") 

(declare-const var1812!5 var8)
(declare-const var1598 String)
(assert true)
;(assert (addItem/991962143 var1812!5 (cast-from-String-to-var575 "14"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14") 

(declare-const var1812!6 var8)
(declare-const var2851 String)
(assert true)
;(assert (addItem/991962143 var1812!6 (cast-from-String-to-var575 "16"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16") 

(declare-const var1812!7 var8)
(declare-const var2598 String)
(assert true)
;(assert (addItem/991962143 var1812!7 (cast-from-String-to-var575 "18"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18") 

(declare-const var1812!8 var8)
(declare-const var3128 String)
(assert true)
;(assert (addItem/991962143 var1812!8 (cast-from-String-to-var575 "24"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24") 

(declare-const var1812!9 var8)
(declare-const var712 String)
(define-const var1825 Int (_fontSize/-1291859940 var2690!3)) ; Statement: $i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> 
(define-const var2460 String (String_valueOf/1240665136 var1825)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setSelectedItem/1943063843 var1812!9 (cast-from-String-to-var575 var2460))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10) 

(declare-const var1812!10 var8)
(declare-const var2460!1 String)
(define-const var1800 var3724 var3724-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31 
(assert true)
;(assert (<init>/-168287477 var1800 var2690!3)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var1800!1 var3724)
(declare-const var2690!4 var1039)
(assert true)
;(assert (addActionListener/-2124801873 var1812!10 (cast-from-var3724-to-var1237 var1800!1))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var1812!11 var8)
(declare-const var1800!2 var3724)
(define-const var1529 var1429 var1429-init) ; Statement: $r12 = new javax.swing.JLabel 
(assert true)
;(assert (<init>/-829434568 var1529 " Font: ")) ; Statement: specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ") 

(declare-const var1529!1 var1429)
(declare-const var3474 String)
(assert true)
;(assert (add/1696452917 (cast-from-var955-to-var241 var1835!2) (cast-from-var1429-to-var1570 var1529!1))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12) 

(declare-const var1835!3 var955)
(declare-const var1529!2 var1429)
(assert true)
;(assert (add/1696452917 (cast-from-var955-to-var241 var1835!3) (cast-from-var8-to-var1570 var686!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2) 

(declare-const var1835!4 var955)
(declare-const var686!4 var8)
(assert true)
;(assert (add/1696452917 (cast-from-var955-to-var241 var1835!4) (cast-from-var8-to-var1570 var1812!11))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3) 

(declare-const var1835!5 var955)
(declare-const var1812!12 var8)
(assert true)
;(assert (addSeparator/-692065624 var1835!5)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var1835!6 var955)
(assert true)
;(assert (addSeparator/-692065624 var1835!6)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var1835!7 var955)
(assert true)
;(assert (add/1696452917 (cast-from-var955-to-var241 var1835!7) (cast-from-var1877-to-var1570 var218!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6) 

(declare-const var1835!8 var955)
(declare-const var218!4 var1877)
(assert true)
;(assert (setAlignmentY/-1214558670 (cast-from-var1877-to-var2759 var218!4) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F) 

(declare-const var218!5 var1877)
(declare-const var548 Float32)
(assert true)
;(assert (setAlignmentX/592895793 (cast-from-var1877-to-var2759 var218!5) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F) 

(declare-const var218!6 var1877)
(declare-const var548!1 Float32)
(assert true)
(define-const var3573 var2396 (getPreferredSize/784517592 (cast-from-var8-to-var2759 var686!4))) ; Statement: $r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var8-to-var2759 var686!4) var3573)) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13) 

(declare-const var686!5 var8)
(declare-const var3573!1 var2396)
(assert true)
(define-const var35 var2396 (getPreferredSize/784517592 (cast-from-var8-to-var2759 var1812!12))) ; Statement: $r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var8-to-var2759 var1812!12) var35)) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14) 

(declare-const var1812!13 var8)
(declare-const var35!1 var2396)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var955-init=([], javax.swing.JToolBar), <init>/954685434=([javax.swing.JToolBar], void), putClientProperty/-942553159=([javax.swing.JComponent, java.lang.Object, java.lang.Object], void), cast-from-var955-to-var2759=([javax.swing.JToolBar], javax.swing.JComponent), cast-from-String-to-var575=([java.lang.String], java.lang.Object), cast-from-var2373-to-var575=([java.lang.Boolean], java.lang.Object), var8-init=([], javax.swing.JComboBox), <init>/31412616=([javax.swing.JComboBox], void), _fontSizeCombo/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JComboBox), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1039-to-var575=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var1877-init=([], javax.swing.JButton), <init>/-1005293566=([javax.swing.JButton, java.lang.String], void), setToolTipText/33204293=([javax.swing.JComponent, java.lang.String], void), cast-from-var1877-to-var2759=([javax.swing.JButton], javax.swing.JComponent), var1875-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$29), <init>/895924084=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var1877-to-var766=([javax.swing.JButton], javax.swing.AbstractButton), cast-from-var1875-to-var1237=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29], java.awt.event.ActionListener), var3966_getDefaultToolkit/1070133764=([], java.awt.Toolkit), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), var3881_getLocalGraphicsEnvironment/1274578704=([], java.awt.GraphicsEnvironment), getAvailableFontFamilyNames/1396040614=([java.awt.GraphicsEnvironment], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void), var3734-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$30), <init>/998408842=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-2124801873=([javax.swing.JComboBox, java.awt.event.ActionListener], void), cast-from-var3734-to-var1237=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30], java.awt.event.ActionListener), addItem/991962143=([javax.swing.JComboBox, java.lang.Object], void), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), String_valueOf/1240665136=([int], java.lang.String), var3724-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$31), <init>/-168287477=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), cast-from-var3724-to-var1237=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31], java.awt.event.ActionListener), var1429-init=([], javax.swing.JLabel), <init>/-829434568=([javax.swing.JLabel, java.lang.String], void), add/1696452917=([java.awt.Container, java.awt.Component], java.awt.Component), cast-from-var955-to-var241=([javax.swing.JToolBar], java.awt.Container), cast-from-var1429-to-var1570=([javax.swing.JLabel], java.awt.Component), cast-from-var8-to-var1570=([javax.swing.JComboBox], java.awt.Component), addSeparator/-692065624=([javax.swing.JToolBar], void), cast-from-var1877-to-var1570=([javax.swing.JButton], java.awt.Component), setAlignmentY/-1214558670=([javax.swing.JComponent, float], void), setAlignmentX/592895793=([javax.swing.JComponent, float], void), getPreferredSize/784517592=([javax.swing.JComponent], java.awt.Dimension), cast-from-var8-to-var2759=([javax.swing.JComboBox], javax.swing.JComponent), setMaximumSize/1529350009=([javax.swing.JComponent, java.awt.Dimension], void)}
; {var1039=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2690=r4, var955=javax.swing.JToolBar, var1835=$r0, var2373=java.lang.Boolean, var2098=$r1, var2759=javax.swing.JComponent, var575=java.lang.Object, var2694="JToolBar.isRollover", var8=javax.swing.JComboBox, var686=$r2, var1812=$r3, var1657=$r5, var3345=java.lang.ClassLoader, var340=r20, var3856=java.net.URL, var1106=$r19, var2106=javax.swing.ImageIcon, var3329=r21, var1877=javax.swing.JButton, var218=$r6, var1790="Clear Log Table", var2644="Clear Log Table.", var1875=org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, var3803=$r7, var766=javax.swing.AbstractButton, var1237=java.awt.event.ActionListener, var3966=java.awt.Toolkit, var1964=$r17, var2254=$z0, var3881=java.awt.GraphicsEnvironment, var760=$r16, var608=r22, var3538=i1, var1253=$i2, var3568=$r8, var3734=org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, var3109=$r9, var152="8", var3362="9", var1918="10", var1598="12", var2851="14", var2598="16", var3128="18", var712="24", var1825=$i0, var2460=$r10, var3724=org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, var1800=$r11, var1429=javax.swing.JLabel, var1529=$r12, var3474=" Font: ", var241=java.awt.Container, var1570=java.awt.Component, var548=0.5F, var2396=java.awt.Dimension, var3573=$r13, var35=$r14}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1039, r4=var2690, javax.swing.JToolBar=var955, $r0=var1835, java.lang.Boolean=var2373, $r1=var2098, javax.swing.JComponent=var2759, java.lang.Object=var575, "JToolBar.isRollover"=var2694, javax.swing.JComboBox=var8, $r2=var686, $r3=var1812, $r5=var1657, java.lang.ClassLoader=var3345, r20=var340, java.net.URL=var3856, $r19=var1106, javax.swing.ImageIcon=var2106, r21=var3329, javax.swing.JButton=var1877, $r6=var218, "Clear Log Table"=var1790, "Clear Log Table."=var2644, org.apache.log4j.lf5.viewer.LogBrokerMonitor$29=var1875, $r7=var3803, javax.swing.AbstractButton=var766, java.awt.event.ActionListener=var1237, java.awt.Toolkit=var3966, $r17=var1964, $z0=var2254, java.awt.GraphicsEnvironment=var3881, $r16=var760, r22=var608, i1=var3538, $i2=var1253, $r8=var3568, org.apache.log4j.lf5.viewer.LogBrokerMonitor$30=var3734, $r9=var3109, "8"=var152, "9"=var3362, "10"=var1918, "12"=var1598, "14"=var2851, "16"=var2598, "18"=var3128, "24"=var712, $i0=var1825, $r10=var2460, org.apache.log4j.lf5.viewer.LogBrokerMonitor$31=var3724, $r11=var1800, javax.swing.JLabel=var1429, $r12=var1529, " Font: "=var3474, java.awt.Container=var241, java.awt.Component=var1570, 0.5F=var548, java.awt.Dimension=var2396, $r13=var3573, $r14=var35}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new javax.swing.JToolBar;	specialinvoke $r0.<javax.swing.JToolBar: void <init>()>();	$r1 = <java.lang.Boolean: java.lang.Boolean TRUE>;	virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1);	$r2 = new javax.swing.JComboBox;	specialinvoke $r2.<javax.swing.JComboBox: void <init>()>();	$r3 = new javax.swing.JComboBox;	specialinvoke $r3.<javax.swing.JComboBox: void <init>()>();	r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3;	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	$r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r21 = null;	if $r19 == null goto $r6 = new javax.swing.JButton;	$r6 = new javax.swing.JButton;	specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table");	if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	$r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29;	specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7);	$r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>();	$z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts>;	if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	$r16 = staticinvoke <java.awt.GraphicsEnvironment: java.awt.GraphicsEnvironment getLocalGraphicsEnvironment()>();	r22 = virtualinvoke $r16.<java.awt.GraphicsEnvironment: java.lang.String[] getAvailableFontFamilyNames()>();	goto [?= i1 = 0];	i1 = 0;	$i2 = lengthof r22;	if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	$r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8);	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9);	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24");	$i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize>;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11);	$r12 = new javax.swing.JLabel;	specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ");	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3);	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F);	$r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13);	$r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14);	return $r0
;block_num 8