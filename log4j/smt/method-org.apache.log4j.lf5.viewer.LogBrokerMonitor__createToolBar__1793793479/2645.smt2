(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2306 0)
(declare-sort var645 0)
(declare-sort var2715 0)
(declare-sort var1034 0)
(declare-sort var1327 0)
(declare-sort var96 0)
(declare-sort var1647 0)
(declare-sort var133 0)
(declare-sort var2488 0)
(declare-sort var726 0)
(declare-sort var2404 0)
(declare-sort var2736 0)
(declare-sort var2255 0)
(declare-sort var3986 0)
(declare-sort var1298 0)
(declare-sort var1604 0)
(declare-sort var3204 0)
(declare-sort var3012 0)
(declare-sort var166 0)
(declare-sort var1408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var645-init () var645)
(declare-fun <init>/954685434 (var645) void)
(declare-fun putClientProperty/-942553159 (var1034 var1327 var1327) void)
(declare-fun cast-from-var645-to-var1034 (var645) var1034)
(declare-fun cast-from-String-to-var1327 (String) var1327)
(declare-fun cast-from-var2715-to-var1327 (var2715) var1327)
(declare-fun var96-init () var96)
(declare-fun <init>/31412616 (var96) void)
(declare-fun _fontSizeCombo/-1291859940 (var2306) var96)
(declare-fun getClass/1258963082 (var1327) ClassObject)
(declare-fun cast-from-var2306-to-var1327 (var2306) var1327)
(declare-fun getClassLoader/-563698447 (ClassObject) var1647)
(declare-fun getResource/282459787 (var1647 String) var133)
(declare-fun var2488-init () var2488)
(declare-fun <init>/1799551303 (var2488 var133) void)
(declare-fun var726-init () var726)
(declare-fun <init>/-1005293566 (var726 String) void)
(declare-fun setToolTipText/33204293 (var1034 String) void)
(declare-fun cast-from-var726-to-var1034 (var726) var1034)
(declare-fun var2404-init () var2404)
(declare-fun <init>/895924084 (var2404 var2306) void)
(declare-fun addActionListener/-1143302268 (var2736 var2255) void)
(declare-fun cast-from-var726-to-var2736 (var726) var2736)
(declare-fun cast-from-var2404-to-var2255 (var2404) var2255)
(declare-fun var3986_getDefaultToolkit/1070133764 () var3986)
(declare-fun _loadSystemFonts/-1291859940 (var2306) Bool)
(declare-fun getFontList/-357147281 (var3986) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun _fontName/-1291859940 (var2306) String)
(declare-fun setSelectedItem/1943063843 (var96 var1327) void)
(declare-fun var1298-init () var1298)
(declare-fun <init>/998408842 (var1298 var2306) void)
(declare-fun addActionListener/-2124801873 (var96 var2255) void)
(declare-fun cast-from-var1298-to-var2255 (var1298) var2255)
(declare-fun addItem/991962143 (var96 var1327) void)
(declare-fun _fontSize/-1291859940 (var2306) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var1604-init () var1604)
(declare-fun <init>/-168287477 (var1604 var2306) void)
(declare-fun cast-from-var1604-to-var2255 (var1604) var2255)
(declare-fun var3204-init () var3204)
(declare-fun <init>/-829434568 (var3204 String) void)
(declare-fun add/1696452917 (var3012 var166) var166)
(declare-fun cast-from-var645-to-var3012 (var645) var3012)
(declare-fun cast-from-var3204-to-var166 (var3204) var166)
(declare-fun cast-from-var96-to-var166 (var96) var166)
(declare-fun addSeparator/-692065624 (var645) void)
(declare-fun cast-from-var726-to-var166 (var726) var166)
(declare-fun setAlignmentY/-1214558670 (var1034 Float32) void)
(declare-fun setAlignmentX/592895793 (var1034 Float32) void)
(declare-fun getPreferredSize/784517592 (var1034) var1408)
(declare-fun cast-from-var96-to-var1034 (var96) var1034)
(declare-fun setMaximumSize/1529350009 (var1034 var1408) void)
(declare-const null-var2306 var2306)
(declare-const var2715-TRUE var2715)
(declare-const null-var1647 var1647)
(declare-const null-var2488 var2488)
(declare-const null-var133 var133)
(declare-const var2209 var2306) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2209 null-var2306)))
(define-const var2861 var645 var645-init) ; Statement: $r0 = new javax.swing.JToolBar 
(assert true)
;(assert (<init>/954685434 var2861)) ; Statement: specialinvoke $r0.<javax.swing.JToolBar: void <init>()>() 

(declare-const var2861!1 var645)
(define-const var2158 var2715 var2715-TRUE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
;(assert (putClientProperty/-942553159 (cast-from-var645-to-var1034 var2861!1) (cast-from-String-to-var1327 "JToolBar.isRollover") (cast-from-var2715-to-var1327 var2158))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1) 

(declare-const var2861!2 var645)
(declare-const var647 String)
(declare-const var2158!1 var2715)
(define-const var3581 var96 var96-init) ; Statement: $r2 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var3581)) ; Statement: specialinvoke $r2.<javax.swing.JComboBox: void <init>()>() 

(declare-const var3581!1 var96)
(define-const var1544 var96 var96-init) ; Statement: $r3 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var1544)) ; Statement: specialinvoke $r3.<javax.swing.JComboBox: void <init>()>() 

(declare-const var1544!1 var96)
(declare-const var2209!1 var2306)
(assert (not (= var2209!1 null-var2306)))
(assert (= (_fontSizeCombo/-1291859940 var2209!1) var1544!1)) ; Statement: r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3 
(assert true)
(define-const var2972 ClassObject (getClass/1258963082 (cast-from-var2306-to-var1327 var2209!1))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var586 var1647 (getClassLoader/-563698447 var2972)) ; Statement: r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(assert (not (= var586 null-var1647))) ; Cond: r20 != null 
(assert true)
(define-const var576 var133 (getResource/282459787 var586 "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif")) ; Statement: $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(define-const var2553 var2488 null-var2488) ; Statement: r21 = null 
 ; Statement: if $r19 == null goto $r6 = new javax.swing.JButton 
(assert (not (= var576 null-var133))) ; Negate: Cond: $r19 == null  
(define-const var2899 var2488 var2488-init) ; Statement: $r18 = new javax.swing.ImageIcon 
(assert true)
;(assert (<init>/1799551303 var2899 var576)) ; Statement: specialinvoke $r18.<javax.swing.ImageIcon: void <init>(java.net.URL)>($r19) 

(declare-const var2899!1 var2488)
(declare-const var576!1 var133)
(define-const var2553!1 var2488 var2899!1) ; Statement: r21 = $r18 
(assert true) ; Non Conditional
(define-const var2608 var726 var726-init) ; Statement: $r6 = new javax.swing.JButton 
(assert true)
;(assert (<init>/-1005293566 var2608 "Clear Log Table")) ; Statement: specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table") 

(declare-const var2608!1 var726)
(declare-const var2738 String)
 ; Statement: if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 
(assert (= var2553!1 null-var2488)) ; Cond: r21 == null 
(assert true)
;(assert (setToolTipText/33204293 (cast-from-var726-to-var1034 var2608!1) "Clear Log Table.")) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 

(declare-const var2608!2 var726)
(declare-const var3466 String)
(define-const var1619 var2404 var2404-init) ; Statement: $r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29 
(assert true)
;(assert (<init>/895924084 var1619 var2209!1)) ; Statement: specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var1619!1 var2404)
(declare-const var2209!2 var2306)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var726-to-var2736 var2608!2) (cast-from-var2404-to-var2255 var1619!1))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7) 

(declare-const var2608!3 var726)
(declare-const var1619!2 var2404)
(define-const var3420 var3986 var3986_getDefaultToolkit/1070133764) ; Statement: $r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>() 
(define-const var76 Bool (_loadSystemFonts/-1291859940 var2209!2)) ; Statement: $z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert (= (ite var76 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1358 (Array Int String) (getFontList/-357147281 var3420)) ; Statement: r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert true) ; Non Conditional
(define-const var314 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var862 Int (getLength-Arr-String-1 var1358)) ; Statement: $i2 = lengthof r22 
 ; Statement: if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert (>= var314 var862)) ; Cond: i1 >= $i2 
(define-const var3977 String (_fontName/-1291859940 var2209!2)) ; Statement: $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert true)
;(assert (setSelectedItem/1943063843 var3581!1 (cast-from-String-to-var1327 var3977))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8) 

(declare-const var3581!2 var96)
(declare-const var3977!1 String)
(define-const var1988 var1298 var1298-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30 
(assert true)
;(assert (<init>/998408842 var1988 var2209!2)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var1988!1 var1298)
(declare-const var2209!3 var2306)
(assert true)
;(assert (addActionListener/-2124801873 var3581!2 (cast-from-var1298-to-var2255 var1988!1))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9) 

(declare-const var3581!3 var96)
(declare-const var1988!2 var1298)
(assert true)
;(assert (addItem/991962143 var1544!1 (cast-from-String-to-var1327 "8"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8") 

(declare-const var1544!2 var96)
(declare-const var2471 String)
(assert true)
;(assert (addItem/991962143 var1544!2 (cast-from-String-to-var1327 "9"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9") 

(declare-const var1544!3 var96)
(declare-const var786 String)
(assert true)
;(assert (addItem/991962143 var1544!3 (cast-from-String-to-var1327 "10"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10") 

(declare-const var1544!4 var96)
(declare-const var3118 String)
(assert true)
;(assert (addItem/991962143 var1544!4 (cast-from-String-to-var1327 "12"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12") 

(declare-const var1544!5 var96)
(declare-const var1601 String)
(assert true)
;(assert (addItem/991962143 var1544!5 (cast-from-String-to-var1327 "14"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14") 

(declare-const var1544!6 var96)
(declare-const var3883 String)
(assert true)
;(assert (addItem/991962143 var1544!6 (cast-from-String-to-var1327 "16"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16") 

(declare-const var1544!7 var96)
(declare-const var86 String)
(assert true)
;(assert (addItem/991962143 var1544!7 (cast-from-String-to-var1327 "18"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18") 

(declare-const var1544!8 var96)
(declare-const var3906 String)
(assert true)
;(assert (addItem/991962143 var1544!8 (cast-from-String-to-var1327 "24"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24") 

(declare-const var1544!9 var96)
(declare-const var3708 String)
(define-const var312 Int (_fontSize/-1291859940 var2209!3)) ; Statement: $i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> 
(define-const var61 String (String_valueOf/1240665136 var312)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setSelectedItem/1943063843 var1544!9 (cast-from-String-to-var1327 var61))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10) 

(declare-const var1544!10 var96)
(declare-const var61!1 String)
(define-const var3442 var1604 var1604-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31 
(assert true)
;(assert (<init>/-168287477 var3442 var2209!3)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var3442!1 var1604)
(declare-const var2209!4 var2306)
(assert true)
;(assert (addActionListener/-2124801873 var1544!10 (cast-from-var1604-to-var2255 var3442!1))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var1544!11 var96)
(declare-const var3442!2 var1604)
(define-const var425 var3204 var3204-init) ; Statement: $r12 = new javax.swing.JLabel 
(assert true)
;(assert (<init>/-829434568 var425 " Font: ")) ; Statement: specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ") 

(declare-const var425!1 var3204)
(declare-const var3825 String)
(assert true)
;(assert (add/1696452917 (cast-from-var645-to-var3012 var2861!2) (cast-from-var3204-to-var166 var425!1))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12) 

(declare-const var2861!3 var645)
(declare-const var425!2 var3204)
(assert true)
;(assert (add/1696452917 (cast-from-var645-to-var3012 var2861!3) (cast-from-var96-to-var166 var3581!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2) 

(declare-const var2861!4 var645)
(declare-const var3581!4 var96)
(assert true)
;(assert (add/1696452917 (cast-from-var645-to-var3012 var2861!4) (cast-from-var96-to-var166 var1544!11))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3) 

(declare-const var2861!5 var645)
(declare-const var1544!12 var96)
(assert true)
;(assert (addSeparator/-692065624 var2861!5)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var2861!6 var645)
(assert true)
;(assert (addSeparator/-692065624 var2861!6)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var2861!7 var645)
(assert true)
;(assert (add/1696452917 (cast-from-var645-to-var3012 var2861!7) (cast-from-var726-to-var166 var2608!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6) 

(declare-const var2861!8 var645)
(declare-const var2608!4 var726)
(assert true)
;(assert (setAlignmentY/-1214558670 (cast-from-var726-to-var1034 var2608!4) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F) 

(declare-const var2608!5 var726)
(declare-const var3073 Float32)
(assert true)
;(assert (setAlignmentX/592895793 (cast-from-var726-to-var1034 var2608!5) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F) 

(declare-const var2608!6 var726)
(declare-const var3073!1 Float32)
(assert true)
(define-const var3694 var1408 (getPreferredSize/784517592 (cast-from-var96-to-var1034 var3581!4))) ; Statement: $r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var96-to-var1034 var3581!4) var3694)) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13) 

(declare-const var3581!5 var96)
(declare-const var3694!1 var1408)
(assert true)
(define-const var2318 var1408 (getPreferredSize/784517592 (cast-from-var96-to-var1034 var1544!12))) ; Statement: $r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var96-to-var1034 var1544!12) var2318)) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14) 

(declare-const var1544!13 var96)
(declare-const var2318!1 var1408)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var645-init=([], javax.swing.JToolBar), <init>/954685434=([javax.swing.JToolBar], void), putClientProperty/-942553159=([javax.swing.JComponent, java.lang.Object, java.lang.Object], void), cast-from-var645-to-var1034=([javax.swing.JToolBar], javax.swing.JComponent), cast-from-String-to-var1327=([java.lang.String], java.lang.Object), cast-from-var2715-to-var1327=([java.lang.Boolean], java.lang.Object), var96-init=([], javax.swing.JComboBox), <init>/31412616=([javax.swing.JComboBox], void), _fontSizeCombo/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JComboBox), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2306-to-var1327=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var2488-init=([], javax.swing.ImageIcon), <init>/1799551303=([javax.swing.ImageIcon, java.net.URL], void), var726-init=([], javax.swing.JButton), <init>/-1005293566=([javax.swing.JButton, java.lang.String], void), setToolTipText/33204293=([javax.swing.JComponent, java.lang.String], void), cast-from-var726-to-var1034=([javax.swing.JButton], javax.swing.JComponent), var2404-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$29), <init>/895924084=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var726-to-var2736=([javax.swing.JButton], javax.swing.AbstractButton), cast-from-var2404-to-var2255=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29], java.awt.event.ActionListener), var3986_getDefaultToolkit/1070133764=([], java.awt.Toolkit), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), getFontList/-357147281=([java.awt.Toolkit], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void), var1298-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$30), <init>/998408842=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-2124801873=([javax.swing.JComboBox, java.awt.event.ActionListener], void), cast-from-var1298-to-var2255=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30], java.awt.event.ActionListener), addItem/991962143=([javax.swing.JComboBox, java.lang.Object], void), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), String_valueOf/1240665136=([int], java.lang.String), var1604-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$31), <init>/-168287477=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), cast-from-var1604-to-var2255=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31], java.awt.event.ActionListener), var3204-init=([], javax.swing.JLabel), <init>/-829434568=([javax.swing.JLabel, java.lang.String], void), add/1696452917=([java.awt.Container, java.awt.Component], java.awt.Component), cast-from-var645-to-var3012=([javax.swing.JToolBar], java.awt.Container), cast-from-var3204-to-var166=([javax.swing.JLabel], java.awt.Component), cast-from-var96-to-var166=([javax.swing.JComboBox], java.awt.Component), addSeparator/-692065624=([javax.swing.JToolBar], void), cast-from-var726-to-var166=([javax.swing.JButton], java.awt.Component), setAlignmentY/-1214558670=([javax.swing.JComponent, float], void), setAlignmentX/592895793=([javax.swing.JComponent, float], void), getPreferredSize/784517592=([javax.swing.JComponent], java.awt.Dimension), cast-from-var96-to-var1034=([javax.swing.JComboBox], javax.swing.JComponent), setMaximumSize/1529350009=([javax.swing.JComponent, java.awt.Dimension], void)}
; {var2306=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2209=r4, var645=javax.swing.JToolBar, var2861=$r0, var2715=java.lang.Boolean, var2158=$r1, var1034=javax.swing.JComponent, var1327=java.lang.Object, var647="JToolBar.isRollover", var96=javax.swing.JComboBox, var3581=$r2, var1544=$r3, var2972=$r5, var1647=java.lang.ClassLoader, var586=r20, var133=java.net.URL, var576=$r19, var2488=javax.swing.ImageIcon, var2553=r21, var2899=$r18, var726=javax.swing.JButton, var2608=$r6, var2738="Clear Log Table", var3466="Clear Log Table.", var2404=org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, var1619=$r7, var2736=javax.swing.AbstractButton, var2255=java.awt.event.ActionListener, var3986=java.awt.Toolkit, var3420=$r17, var76=$z0, var1358=r22, var314=i1, var862=$i2, var3977=$r8, var1298=org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, var1988=$r9, var2471="8", var786="9", var3118="10", var1601="12", var3883="14", var86="16", var3906="18", var3708="24", var312=$i0, var61=$r10, var1604=org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, var3442=$r11, var3204=javax.swing.JLabel, var425=$r12, var3825=" Font: ", var3012=java.awt.Container, var166=java.awt.Component, var3073=0.5F, var1408=java.awt.Dimension, var3694=$r13, var2318=$r14}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2306, r4=var2209, javax.swing.JToolBar=var645, $r0=var2861, java.lang.Boolean=var2715, $r1=var2158, javax.swing.JComponent=var1034, java.lang.Object=var1327, "JToolBar.isRollover"=var647, javax.swing.JComboBox=var96, $r2=var3581, $r3=var1544, $r5=var2972, java.lang.ClassLoader=var1647, r20=var586, java.net.URL=var133, $r19=var576, javax.swing.ImageIcon=var2488, r21=var2553, $r18=var2899, javax.swing.JButton=var726, $r6=var2608, "Clear Log Table"=var2738, "Clear Log Table."=var3466, org.apache.log4j.lf5.viewer.LogBrokerMonitor$29=var2404, $r7=var1619, javax.swing.AbstractButton=var2736, java.awt.event.ActionListener=var2255, java.awt.Toolkit=var3986, $r17=var3420, $z0=var76, r22=var1358, i1=var314, $i2=var862, $r8=var3977, org.apache.log4j.lf5.viewer.LogBrokerMonitor$30=var1298, $r9=var1988, "8"=var2471, "9"=var786, "10"=var3118, "12"=var1601, "14"=var3883, "16"=var86, "18"=var3906, "24"=var3708, $i0=var312, $r10=var61, org.apache.log4j.lf5.viewer.LogBrokerMonitor$31=var1604, $r11=var3442, javax.swing.JLabel=var3204, $r12=var425, " Font: "=var3825, java.awt.Container=var3012, java.awt.Component=var166, 0.5F=var3073, java.awt.Dimension=var1408, $r13=var3694, $r14=var2318}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new javax.swing.JToolBar;	specialinvoke $r0.<javax.swing.JToolBar: void <init>()>();	$r1 = <java.lang.Boolean: java.lang.Boolean TRUE>;	virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1);	$r2 = new javax.swing.JComboBox;	specialinvoke $r2.<javax.swing.JComboBox: void <init>()>();	$r3 = new javax.swing.JComboBox;	specialinvoke $r3.<javax.swing.JComboBox: void <init>()>();	r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3;	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	$r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r21 = null;	if $r19 == null goto $r6 = new javax.swing.JButton;	$r18 = new javax.swing.ImageIcon;	specialinvoke $r18.<javax.swing.ImageIcon: void <init>(java.net.URL)>($r19);	r21 = $r18;	$r6 = new javax.swing.JButton;	specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table");	if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	$r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29;	specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7);	$r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>();	$z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts>;	if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	i1 = 0;	$i2 = lengthof r22;	if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	$r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8);	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9);	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24");	$i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize>;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11);	$r12 = new javax.swing.JLabel;	specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ");	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3);	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F);	$r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13);	$r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14);	return $r0
;block_num 9