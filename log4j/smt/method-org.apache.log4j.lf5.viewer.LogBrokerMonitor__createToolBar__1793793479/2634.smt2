(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1683 0)
(declare-sort var2049 0)
(declare-sort var3591 0)
(declare-sort var2285 0)
(declare-sort var1778 0)
(declare-sort var3791 0)
(declare-sort var3910 0)
(declare-sort var193 0)
(declare-sort var879 0)
(declare-sort var2545 0)
(declare-sort var1828 0)
(declare-sort var1250 0)
(declare-sort var2977 0)
(declare-sort var2356 0)
(declare-sort var1331 0)
(declare-sort var625 0)
(declare-sort var3921 0)
(declare-sort var452 0)
(declare-sort var895 0)
(declare-sort var2289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2049-init () var2049)
(declare-fun <init>/954685434 (var2049) void)
(declare-fun putClientProperty/-942553159 (var2285 var1778 var1778) void)
(declare-fun cast-from-var2049-to-var2285 (var2049) var2285)
(declare-fun cast-from-String-to-var1778 (String) var1778)
(declare-fun cast-from-var3591-to-var1778 (var3591) var1778)
(declare-fun var3791-init () var3791)
(declare-fun <init>/31412616 (var3791) void)
(declare-fun _fontSizeCombo/-1291859940 (var1683) var3791)
(declare-fun getClass/1258963082 (var1778) ClassObject)
(declare-fun cast-from-var1683-to-var1778 (var1683) var1778)
(declare-fun getClassLoader/-563698447 (ClassObject) var3910)
(declare-fun getResource/282459787 (var3910 String) var193)
(declare-fun var2545-init () var2545)
(declare-fun <init>/-1005293566 (var2545 String) void)
(declare-fun setToolTipText/33204293 (var2285 String) void)
(declare-fun cast-from-var2545-to-var2285 (var2545) var2285)
(declare-fun var1828-init () var1828)
(declare-fun <init>/895924084 (var1828 var1683) void)
(declare-fun addActionListener/-1143302268 (var1250 var2977) void)
(declare-fun cast-from-var2545-to-var1250 (var2545) var1250)
(declare-fun cast-from-var1828-to-var2977 (var1828) var2977)
(declare-fun var2356_getDefaultToolkit/1070133764 () var2356)
(declare-fun _loadSystemFonts/-1291859940 (var1683) Bool)
(declare-fun getFontList/-357147281 (var2356) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun _fontName/-1291859940 (var1683) String)
(declare-fun setSelectedItem/1943063843 (var3791 var1778) void)
(declare-fun var1331-init () var1331)
(declare-fun <init>/998408842 (var1331 var1683) void)
(declare-fun addActionListener/-2124801873 (var3791 var2977) void)
(declare-fun cast-from-var1331-to-var2977 (var1331) var2977)
(declare-fun addItem/991962143 (var3791 var1778) void)
(declare-fun _fontSize/-1291859940 (var1683) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var625-init () var625)
(declare-fun <init>/-168287477 (var625 var1683) void)
(declare-fun cast-from-var625-to-var2977 (var625) var2977)
(declare-fun var3921-init () var3921)
(declare-fun <init>/-829434568 (var3921 String) void)
(declare-fun add/1696452917 (var452 var895) var895)
(declare-fun cast-from-var2049-to-var452 (var2049) var452)
(declare-fun cast-from-var3921-to-var895 (var3921) var895)
(declare-fun cast-from-var3791-to-var895 (var3791) var895)
(declare-fun addSeparator/-692065624 (var2049) void)
(declare-fun cast-from-var2545-to-var895 (var2545) var895)
(declare-fun setAlignmentY/-1214558670 (var2285 Float32) void)
(declare-fun setAlignmentX/592895793 (var2285 Float32) void)
(declare-fun getPreferredSize/784517592 (var2285) var2289)
(declare-fun cast-from-var3791-to-var2285 (var3791) var2285)
(declare-fun setMaximumSize/1529350009 (var2285 var2289) void)
(declare-const null-var1683 var1683)
(declare-const var3591-TRUE var3591)
(declare-const null-var3910 var3910)
(declare-const null-var879 var879)
(declare-const null-var193 var193)
(declare-const var3436 var1683) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var3436 null-var1683)))
(define-const var1833 var2049 var2049-init) ; Statement: $r0 = new javax.swing.JToolBar 
(assert true)
;(assert (<init>/954685434 var1833)) ; Statement: specialinvoke $r0.<javax.swing.JToolBar: void <init>()>() 

(declare-const var1833!1 var2049)
(define-const var3250 var3591 var3591-TRUE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
;(assert (putClientProperty/-942553159 (cast-from-var2049-to-var2285 var1833!1) (cast-from-String-to-var1778 "JToolBar.isRollover") (cast-from-var3591-to-var1778 var3250))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1) 

(declare-const var1833!2 var2049)
(declare-const var1556 String)
(declare-const var3250!1 var3591)
(define-const var1710 var3791 var3791-init) ; Statement: $r2 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var1710)) ; Statement: specialinvoke $r2.<javax.swing.JComboBox: void <init>()>() 

(declare-const var1710!1 var3791)
(define-const var2503 var3791 var3791-init) ; Statement: $r3 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var2503)) ; Statement: specialinvoke $r3.<javax.swing.JComboBox: void <init>()>() 

(declare-const var2503!1 var3791)
(declare-const var3436!1 var1683)
(assert (not (= var3436!1 null-var1683)))
(assert (= (_fontSizeCombo/-1291859940 var3436!1) var2503!1)) ; Statement: r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3 
(assert true)
(define-const var1153 ClassObject (getClass/1258963082 (cast-from-var1683-to-var1778 var3436!1))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1732 var3910 (getClassLoader/-563698447 var1153)) ; Statement: r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(assert (not (= var1732 null-var3910))) ; Cond: r20 != null 
(assert true)
(define-const var84 var193 (getResource/282459787 var1732 "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif")) ; Statement: $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(define-const var2854 var879 null-var879) ; Statement: r21 = null 
 ; Statement: if $r19 == null goto $r6 = new javax.swing.JButton 
(assert (= var84 null-var193)) ; Cond: $r19 == null 
(define-const var2269 var2545 var2545-init) ; Statement: $r6 = new javax.swing.JButton 
(assert true)
;(assert (<init>/-1005293566 var2269 "Clear Log Table")) ; Statement: specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table") 

(declare-const var2269!1 var2545)
(declare-const var2478 String)
 ; Statement: if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 
(assert (= var2854 null-var879)) ; Cond: r21 == null 
(assert true)
;(assert (setToolTipText/33204293 (cast-from-var2545-to-var2285 var2269!1) "Clear Log Table.")) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 

(declare-const var2269!2 var2545)
(declare-const var3379 String)
(define-const var730 var1828 var1828-init) ; Statement: $r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29 
(assert true)
;(assert (<init>/895924084 var730 var3436!1)) ; Statement: specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var730!1 var1828)
(declare-const var3436!2 var1683)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var2545-to-var1250 var2269!2) (cast-from-var1828-to-var2977 var730!1))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7) 

(declare-const var2269!3 var2545)
(declare-const var730!2 var1828)
(define-const var1471 var2356 var2356_getDefaultToolkit/1070133764) ; Statement: $r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>() 
(define-const var1529 Bool (_loadSystemFonts/-1291859940 var3436!2)) ; Statement: $z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert (= (ite var1529 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1003 (Array Int String) (getFontList/-357147281 var1471)) ; Statement: r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert true) ; Non Conditional
(define-const var321 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3289 Int (getLength-Arr-String-1 var1003)) ; Statement: $i2 = lengthof r22 
 ; Statement: if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert (>= var321 var3289)) ; Cond: i1 >= $i2 
(define-const var1015 String (_fontName/-1291859940 var3436!2)) ; Statement: $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert true)
;(assert (setSelectedItem/1943063843 var1710!1 (cast-from-String-to-var1778 var1015))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8) 

(declare-const var1710!2 var3791)
(declare-const var1015!1 String)
(define-const var2625 var1331 var1331-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30 
(assert true)
;(assert (<init>/998408842 var2625 var3436!2)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var2625!1 var1331)
(declare-const var3436!3 var1683)
(assert true)
;(assert (addActionListener/-2124801873 var1710!2 (cast-from-var1331-to-var2977 var2625!1))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9) 

(declare-const var1710!3 var3791)
(declare-const var2625!2 var1331)
(assert true)
;(assert (addItem/991962143 var2503!1 (cast-from-String-to-var1778 "8"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8") 

(declare-const var2503!2 var3791)
(declare-const var2341 String)
(assert true)
;(assert (addItem/991962143 var2503!2 (cast-from-String-to-var1778 "9"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9") 

(declare-const var2503!3 var3791)
(declare-const var3959 String)
(assert true)
;(assert (addItem/991962143 var2503!3 (cast-from-String-to-var1778 "10"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10") 

(declare-const var2503!4 var3791)
(declare-const var2376 String)
(assert true)
;(assert (addItem/991962143 var2503!4 (cast-from-String-to-var1778 "12"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12") 

(declare-const var2503!5 var3791)
(declare-const var2225 String)
(assert true)
;(assert (addItem/991962143 var2503!5 (cast-from-String-to-var1778 "14"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14") 

(declare-const var2503!6 var3791)
(declare-const var3293 String)
(assert true)
;(assert (addItem/991962143 var2503!6 (cast-from-String-to-var1778 "16"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16") 

(declare-const var2503!7 var3791)
(declare-const var2430 String)
(assert true)
;(assert (addItem/991962143 var2503!7 (cast-from-String-to-var1778 "18"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18") 

(declare-const var2503!8 var3791)
(declare-const var3054 String)
(assert true)
;(assert (addItem/991962143 var2503!8 (cast-from-String-to-var1778 "24"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24") 

(declare-const var2503!9 var3791)
(declare-const var445 String)
(define-const var2998 Int (_fontSize/-1291859940 var3436!3)) ; Statement: $i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> 
(define-const var1674 String (String_valueOf/1240665136 var2998)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setSelectedItem/1943063843 var2503!9 (cast-from-String-to-var1778 var1674))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10) 

(declare-const var2503!10 var3791)
(declare-const var1674!1 String)
(define-const var1851 var625 var625-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31 
(assert true)
;(assert (<init>/-168287477 var1851 var3436!3)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var1851!1 var625)
(declare-const var3436!4 var1683)
(assert true)
;(assert (addActionListener/-2124801873 var2503!10 (cast-from-var625-to-var2977 var1851!1))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var2503!11 var3791)
(declare-const var1851!2 var625)
(define-const var1213 var3921 var3921-init) ; Statement: $r12 = new javax.swing.JLabel 
(assert true)
;(assert (<init>/-829434568 var1213 " Font: ")) ; Statement: specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ") 

(declare-const var1213!1 var3921)
(declare-const var2673 String)
(assert true)
;(assert (add/1696452917 (cast-from-var2049-to-var452 var1833!2) (cast-from-var3921-to-var895 var1213!1))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12) 

(declare-const var1833!3 var2049)
(declare-const var1213!2 var3921)
(assert true)
;(assert (add/1696452917 (cast-from-var2049-to-var452 var1833!3) (cast-from-var3791-to-var895 var1710!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2) 

(declare-const var1833!4 var2049)
(declare-const var1710!4 var3791)
(assert true)
;(assert (add/1696452917 (cast-from-var2049-to-var452 var1833!4) (cast-from-var3791-to-var895 var2503!11))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3) 

(declare-const var1833!5 var2049)
(declare-const var2503!12 var3791)
(assert true)
;(assert (addSeparator/-692065624 var1833!5)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var1833!6 var2049)
(assert true)
;(assert (addSeparator/-692065624 var1833!6)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var1833!7 var2049)
(assert true)
;(assert (add/1696452917 (cast-from-var2049-to-var452 var1833!7) (cast-from-var2545-to-var895 var2269!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6) 

(declare-const var1833!8 var2049)
(declare-const var2269!4 var2545)
(assert true)
;(assert (setAlignmentY/-1214558670 (cast-from-var2545-to-var2285 var2269!4) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F) 

(declare-const var2269!5 var2545)
(declare-const var3166 Float32)
(assert true)
;(assert (setAlignmentX/592895793 (cast-from-var2545-to-var2285 var2269!5) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F) 

(declare-const var2269!6 var2545)
(declare-const var3166!1 Float32)
(assert true)
(define-const var3760 var2289 (getPreferredSize/784517592 (cast-from-var3791-to-var2285 var1710!4))) ; Statement: $r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var3791-to-var2285 var1710!4) var3760)) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13) 

(declare-const var1710!5 var3791)
(declare-const var3760!1 var2289)
(assert true)
(define-const var2974 var2289 (getPreferredSize/784517592 (cast-from-var3791-to-var2285 var2503!12))) ; Statement: $r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var3791-to-var2285 var2503!12) var2974)) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14) 

(declare-const var2503!13 var3791)
(declare-const var2974!1 var2289)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2049-init=([], javax.swing.JToolBar), <init>/954685434=([javax.swing.JToolBar], void), putClientProperty/-942553159=([javax.swing.JComponent, java.lang.Object, java.lang.Object], void), cast-from-var2049-to-var2285=([javax.swing.JToolBar], javax.swing.JComponent), cast-from-String-to-var1778=([java.lang.String], java.lang.Object), cast-from-var3591-to-var1778=([java.lang.Boolean], java.lang.Object), var3791-init=([], javax.swing.JComboBox), <init>/31412616=([javax.swing.JComboBox], void), _fontSizeCombo/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JComboBox), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1683-to-var1778=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var2545-init=([], javax.swing.JButton), <init>/-1005293566=([javax.swing.JButton, java.lang.String], void), setToolTipText/33204293=([javax.swing.JComponent, java.lang.String], void), cast-from-var2545-to-var2285=([javax.swing.JButton], javax.swing.JComponent), var1828-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$29), <init>/895924084=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var2545-to-var1250=([javax.swing.JButton], javax.swing.AbstractButton), cast-from-var1828-to-var2977=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29], java.awt.event.ActionListener), var2356_getDefaultToolkit/1070133764=([], java.awt.Toolkit), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), getFontList/-357147281=([java.awt.Toolkit], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void), var1331-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$30), <init>/998408842=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-2124801873=([javax.swing.JComboBox, java.awt.event.ActionListener], void), cast-from-var1331-to-var2977=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30], java.awt.event.ActionListener), addItem/991962143=([javax.swing.JComboBox, java.lang.Object], void), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), String_valueOf/1240665136=([int], java.lang.String), var625-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$31), <init>/-168287477=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), cast-from-var625-to-var2977=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31], java.awt.event.ActionListener), var3921-init=([], javax.swing.JLabel), <init>/-829434568=([javax.swing.JLabel, java.lang.String], void), add/1696452917=([java.awt.Container, java.awt.Component], java.awt.Component), cast-from-var2049-to-var452=([javax.swing.JToolBar], java.awt.Container), cast-from-var3921-to-var895=([javax.swing.JLabel], java.awt.Component), cast-from-var3791-to-var895=([javax.swing.JComboBox], java.awt.Component), addSeparator/-692065624=([javax.swing.JToolBar], void), cast-from-var2545-to-var895=([javax.swing.JButton], java.awt.Component), setAlignmentY/-1214558670=([javax.swing.JComponent, float], void), setAlignmentX/592895793=([javax.swing.JComponent, float], void), getPreferredSize/784517592=([javax.swing.JComponent], java.awt.Dimension), cast-from-var3791-to-var2285=([javax.swing.JComboBox], javax.swing.JComponent), setMaximumSize/1529350009=([javax.swing.JComponent, java.awt.Dimension], void)}
; {var1683=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3436=r4, var2049=javax.swing.JToolBar, var1833=$r0, var3591=java.lang.Boolean, var3250=$r1, var2285=javax.swing.JComponent, var1778=java.lang.Object, var1556="JToolBar.isRollover", var3791=javax.swing.JComboBox, var1710=$r2, var2503=$r3, var1153=$r5, var3910=java.lang.ClassLoader, var1732=r20, var193=java.net.URL, var84=$r19, var879=javax.swing.ImageIcon, var2854=r21, var2545=javax.swing.JButton, var2269=$r6, var2478="Clear Log Table", var3379="Clear Log Table.", var1828=org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, var730=$r7, var1250=javax.swing.AbstractButton, var2977=java.awt.event.ActionListener, var2356=java.awt.Toolkit, var1471=$r17, var1529=$z0, var1003=r22, var321=i1, var3289=$i2, var1015=$r8, var1331=org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, var2625=$r9, var2341="8", var3959="9", var2376="10", var2225="12", var3293="14", var2430="16", var3054="18", var445="24", var2998=$i0, var1674=$r10, var625=org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, var1851=$r11, var3921=javax.swing.JLabel, var1213=$r12, var2673=" Font: ", var452=java.awt.Container, var895=java.awt.Component, var3166=0.5F, var2289=java.awt.Dimension, var3760=$r13, var2974=$r14}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1683, r4=var3436, javax.swing.JToolBar=var2049, $r0=var1833, java.lang.Boolean=var3591, $r1=var3250, javax.swing.JComponent=var2285, java.lang.Object=var1778, "JToolBar.isRollover"=var1556, javax.swing.JComboBox=var3791, $r2=var1710, $r3=var2503, $r5=var1153, java.lang.ClassLoader=var3910, r20=var1732, java.net.URL=var193, $r19=var84, javax.swing.ImageIcon=var879, r21=var2854, javax.swing.JButton=var2545, $r6=var2269, "Clear Log Table"=var2478, "Clear Log Table."=var3379, org.apache.log4j.lf5.viewer.LogBrokerMonitor$29=var1828, $r7=var730, javax.swing.AbstractButton=var1250, java.awt.event.ActionListener=var2977, java.awt.Toolkit=var2356, $r17=var1471, $z0=var1529, r22=var1003, i1=var321, $i2=var3289, $r8=var1015, org.apache.log4j.lf5.viewer.LogBrokerMonitor$30=var1331, $r9=var2625, "8"=var2341, "9"=var3959, "10"=var2376, "12"=var2225, "14"=var3293, "16"=var2430, "18"=var3054, "24"=var445, $i0=var2998, $r10=var1674, org.apache.log4j.lf5.viewer.LogBrokerMonitor$31=var625, $r11=var1851, javax.swing.JLabel=var3921, $r12=var1213, " Font: "=var2673, java.awt.Container=var452, java.awt.Component=var895, 0.5F=var3166, java.awt.Dimension=var2289, $r13=var3760, $r14=var2974}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new javax.swing.JToolBar;	specialinvoke $r0.<javax.swing.JToolBar: void <init>()>();	$r1 = <java.lang.Boolean: java.lang.Boolean TRUE>;	virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1);	$r2 = new javax.swing.JComboBox;	specialinvoke $r2.<javax.swing.JComboBox: void <init>()>();	$r3 = new javax.swing.JComboBox;	specialinvoke $r3.<javax.swing.JComboBox: void <init>()>();	r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3;	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	$r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r21 = null;	if $r19 == null goto $r6 = new javax.swing.JButton;	$r6 = new javax.swing.JButton;	specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table");	if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	$r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29;	specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7);	$r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>();	$z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts>;	if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	i1 = 0;	$i2 = lengthof r22;	if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	$r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8);	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9);	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24");	$i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize>;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11);	$r12 = new javax.swing.JLabel;	specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ");	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3);	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F);	$r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13);	$r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14);	return $r0
;block_num 8