(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3577 0)
(declare-sort var1065 0)
(declare-sort var834 0)
(declare-sort var2474 0)
(declare-sort var2344 0)
(declare-sort var551 0)
(declare-sort var3306 0)
(declare-sort var1084 0)
(declare-sort var1810 0)
(declare-sort var1929 0)
(declare-sort var2955 0)
(declare-sort var2403 0)
(declare-sort var2680 0)
(declare-sort var3410 0)
(declare-sort var2840 0)
(declare-sort var2231 0)
(declare-sort var531 0)
(declare-sort var2726 0)
(declare-sort var55 0)
(declare-sort var439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1065-init () var1065)
(declare-fun <init>/954685434 (var1065) void)
(declare-fun putClientProperty/-942553159 (var2474 var2344 var2344) void)
(declare-fun cast-from-var1065-to-var2474 (var1065) var2474)
(declare-fun cast-from-String-to-var2344 (String) var2344)
(declare-fun cast-from-var834-to-var2344 (var834) var2344)
(declare-fun var551-init () var551)
(declare-fun <init>/31412616 (var551) void)
(declare-fun _fontSizeCombo/-1291859940 (var3577) var551)
(declare-fun getClass/1258963082 (var2344) ClassObject)
(declare-fun cast-from-var3577-to-var2344 (var3577) var2344)
(declare-fun getClassLoader/-563698447 (ClassObject) var3306)
(declare-fun var3306_getSystemClassLoader/-483392723 () var3306)
(declare-fun getResource/282459787 (var3306 String) var1084)
(declare-fun var1929-init () var1929)
(declare-fun <init>/-1005293566 (var1929 String) void)
(declare-fun setToolTipText/33204293 (var2474 String) void)
(declare-fun cast-from-var1929-to-var2474 (var1929) var2474)
(declare-fun var2955-init () var2955)
(declare-fun <init>/895924084 (var2955 var3577) void)
(declare-fun addActionListener/-1143302268 (var2403 var2680) void)
(declare-fun cast-from-var1929-to-var2403 (var1929) var2403)
(declare-fun cast-from-var2955-to-var2680 (var2955) var2680)
(declare-fun var3410_getDefaultToolkit/1070133764 () var3410)
(declare-fun _loadSystemFonts/-1291859940 (var3577) Bool)
(declare-fun getFontList/-357147281 (var3410) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun _fontName/-1291859940 (var3577) String)
(declare-fun setSelectedItem/1943063843 (var551 var2344) void)
(declare-fun var2840-init () var2840)
(declare-fun <init>/998408842 (var2840 var3577) void)
(declare-fun addActionListener/-2124801873 (var551 var2680) void)
(declare-fun cast-from-var2840-to-var2680 (var2840) var2680)
(declare-fun addItem/991962143 (var551 var2344) void)
(declare-fun _fontSize/-1291859940 (var3577) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var2231-init () var2231)
(declare-fun <init>/-168287477 (var2231 var3577) void)
(declare-fun cast-from-var2231-to-var2680 (var2231) var2680)
(declare-fun var531-init () var531)
(declare-fun <init>/-829434568 (var531 String) void)
(declare-fun add/1696452917 (var2726 var55) var55)
(declare-fun cast-from-var1065-to-var2726 (var1065) var2726)
(declare-fun cast-from-var531-to-var55 (var531) var55)
(declare-fun cast-from-var551-to-var55 (var551) var55)
(declare-fun addSeparator/-692065624 (var1065) void)
(declare-fun cast-from-var1929-to-var55 (var1929) var55)
(declare-fun setAlignmentY/-1214558670 (var2474 Float32) void)
(declare-fun setAlignmentX/592895793 (var2474 Float32) void)
(declare-fun getPreferredSize/784517592 (var2474) var439)
(declare-fun cast-from-var551-to-var2474 (var551) var2474)
(declare-fun setMaximumSize/1529350009 (var2474 var439) void)
(declare-const null-var3577 var3577)
(declare-const var834-TRUE var834)
(declare-const null-var3306 var3306)
(declare-const null-var1810 var1810)
(declare-const null-var1084 var1084)
(declare-const var1804 var3577) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1804 null-var3577)))
(define-const var3961 var1065 var1065-init) ; Statement: $r0 = new javax.swing.JToolBar 
(assert true)
;(assert (<init>/954685434 var3961)) ; Statement: specialinvoke $r0.<javax.swing.JToolBar: void <init>()>() 

(declare-const var3961!1 var1065)
(define-const var3497 var834 var834-TRUE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
;(assert (putClientProperty/-942553159 (cast-from-var1065-to-var2474 var3961!1) (cast-from-String-to-var2344 "JToolBar.isRollover") (cast-from-var834-to-var2344 var3497))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1) 

(declare-const var3961!2 var1065)
(declare-const var2949 String)
(declare-const var3497!1 var834)
(define-const var1952 var551 var551-init) ; Statement: $r2 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var1952)) ; Statement: specialinvoke $r2.<javax.swing.JComboBox: void <init>()>() 

(declare-const var1952!1 var551)
(define-const var2628 var551 var551-init) ; Statement: $r3 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var2628)) ; Statement: specialinvoke $r3.<javax.swing.JComboBox: void <init>()>() 

(declare-const var2628!1 var551)
(declare-const var1804!1 var3577)
(assert (not (= var1804!1 null-var3577)))
(assert (= (_fontSizeCombo/-1291859940 var1804!1) var2628!1)) ; Statement: r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3 
(assert true)
(define-const var3014 ClassObject (getClass/1258963082 (cast-from-var3577-to-var2344 var1804!1))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1977 var3306 (getClassLoader/-563698447 var3014)) ; Statement: r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(assert (not (not (= var1977 null-var3306)))) ; Negate: Cond: r20 != null  
(define-const var1977!1 var3306 var3306_getSystemClassLoader/-483392723) ; Statement: r20 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3707 var1084 (getResource/282459787 var1977!1 "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif")) ; Statement: $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(define-const var1723 var1810 null-var1810) ; Statement: r21 = null 
 ; Statement: if $r19 == null goto $r6 = new javax.swing.JButton 
(assert (= var3707 null-var1084)) ; Cond: $r19 == null 
(define-const var1028 var1929 var1929-init) ; Statement: $r6 = new javax.swing.JButton 
(assert true)
;(assert (<init>/-1005293566 var1028 "Clear Log Table")) ; Statement: specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table") 

(declare-const var1028!1 var1929)
(declare-const var3481 String)
 ; Statement: if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 
(assert (= var1723 null-var1810)) ; Cond: r21 == null 
(assert true)
;(assert (setToolTipText/33204293 (cast-from-var1929-to-var2474 var1028!1) "Clear Log Table.")) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 

(declare-const var1028!2 var1929)
(declare-const var1805 String)
(define-const var253 var2955 var2955-init) ; Statement: $r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29 
(assert true)
;(assert (<init>/895924084 var253 var1804!1)) ; Statement: specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var253!1 var2955)
(declare-const var1804!2 var3577)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var1929-to-var2403 var1028!2) (cast-from-var2955-to-var2680 var253!1))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7) 

(declare-const var1028!3 var1929)
(declare-const var253!2 var2955)
(define-const var1710 var3410 var3410_getDefaultToolkit/1070133764) ; Statement: $r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>() 
(define-const var2390 Bool (_loadSystemFonts/-1291859940 var1804!2)) ; Statement: $z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert (= (ite var2390 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1170 (Array Int String) (getFontList/-357147281 var1710)) ; Statement: r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert true) ; Non Conditional
(define-const var77 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var728 Int (getLength-Arr-String-1 var1170)) ; Statement: $i2 = lengthof r22 
 ; Statement: if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert (>= var77 var728)) ; Cond: i1 >= $i2 
(define-const var3824 String (_fontName/-1291859940 var1804!2)) ; Statement: $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert true)
;(assert (setSelectedItem/1943063843 var1952!1 (cast-from-String-to-var2344 var3824))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8) 

(declare-const var1952!2 var551)
(declare-const var3824!1 String)
(define-const var2391 var2840 var2840-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30 
(assert true)
;(assert (<init>/998408842 var2391 var1804!2)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var2391!1 var2840)
(declare-const var1804!3 var3577)
(assert true)
;(assert (addActionListener/-2124801873 var1952!2 (cast-from-var2840-to-var2680 var2391!1))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9) 

(declare-const var1952!3 var551)
(declare-const var2391!2 var2840)
(assert true)
;(assert (addItem/991962143 var2628!1 (cast-from-String-to-var2344 "8"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8") 

(declare-const var2628!2 var551)
(declare-const var2931 String)
(assert true)
;(assert (addItem/991962143 var2628!2 (cast-from-String-to-var2344 "9"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9") 

(declare-const var2628!3 var551)
(declare-const var3290 String)
(assert true)
;(assert (addItem/991962143 var2628!3 (cast-from-String-to-var2344 "10"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10") 

(declare-const var2628!4 var551)
(declare-const var1415 String)
(assert true)
;(assert (addItem/991962143 var2628!4 (cast-from-String-to-var2344 "12"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12") 

(declare-const var2628!5 var551)
(declare-const var3566 String)
(assert true)
;(assert (addItem/991962143 var2628!5 (cast-from-String-to-var2344 "14"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14") 

(declare-const var2628!6 var551)
(declare-const var3058 String)
(assert true)
;(assert (addItem/991962143 var2628!6 (cast-from-String-to-var2344 "16"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16") 

(declare-const var2628!7 var551)
(declare-const var1131 String)
(assert true)
;(assert (addItem/991962143 var2628!7 (cast-from-String-to-var2344 "18"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18") 

(declare-const var2628!8 var551)
(declare-const var1902 String)
(assert true)
;(assert (addItem/991962143 var2628!8 (cast-from-String-to-var2344 "24"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24") 

(declare-const var2628!9 var551)
(declare-const var3830 String)
(define-const var1336 Int (_fontSize/-1291859940 var1804!3)) ; Statement: $i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> 
(define-const var1791 String (String_valueOf/1240665136 var1336)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setSelectedItem/1943063843 var2628!9 (cast-from-String-to-var2344 var1791))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10) 

(declare-const var2628!10 var551)
(declare-const var1791!1 String)
(define-const var395 var2231 var2231-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31 
(assert true)
;(assert (<init>/-168287477 var395 var1804!3)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var395!1 var2231)
(declare-const var1804!4 var3577)
(assert true)
;(assert (addActionListener/-2124801873 var2628!10 (cast-from-var2231-to-var2680 var395!1))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var2628!11 var551)
(declare-const var395!2 var2231)
(define-const var2466 var531 var531-init) ; Statement: $r12 = new javax.swing.JLabel 
(assert true)
;(assert (<init>/-829434568 var2466 " Font: ")) ; Statement: specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ") 

(declare-const var2466!1 var531)
(declare-const var2343 String)
(assert true)
;(assert (add/1696452917 (cast-from-var1065-to-var2726 var3961!2) (cast-from-var531-to-var55 var2466!1))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12) 

(declare-const var3961!3 var1065)
(declare-const var2466!2 var531)
(assert true)
;(assert (add/1696452917 (cast-from-var1065-to-var2726 var3961!3) (cast-from-var551-to-var55 var1952!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2) 

(declare-const var3961!4 var1065)
(declare-const var1952!4 var551)
(assert true)
;(assert (add/1696452917 (cast-from-var1065-to-var2726 var3961!4) (cast-from-var551-to-var55 var2628!11))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3) 

(declare-const var3961!5 var1065)
(declare-const var2628!12 var551)
(assert true)
;(assert (addSeparator/-692065624 var3961!5)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var3961!6 var1065)
(assert true)
;(assert (addSeparator/-692065624 var3961!6)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var3961!7 var1065)
(assert true)
;(assert (add/1696452917 (cast-from-var1065-to-var2726 var3961!7) (cast-from-var1929-to-var55 var1028!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6) 

(declare-const var3961!8 var1065)
(declare-const var1028!4 var1929)
(assert true)
;(assert (setAlignmentY/-1214558670 (cast-from-var1929-to-var2474 var1028!4) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F) 

(declare-const var1028!5 var1929)
(declare-const var2414 Float32)
(assert true)
;(assert (setAlignmentX/592895793 (cast-from-var1929-to-var2474 var1028!5) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F) 

(declare-const var1028!6 var1929)
(declare-const var2414!1 Float32)
(assert true)
(define-const var782 var439 (getPreferredSize/784517592 (cast-from-var551-to-var2474 var1952!4))) ; Statement: $r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var551-to-var2474 var1952!4) var782)) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13) 

(declare-const var1952!5 var551)
(declare-const var782!1 var439)
(assert true)
(define-const var1725 var439 (getPreferredSize/784517592 (cast-from-var551-to-var2474 var2628!12))) ; Statement: $r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var551-to-var2474 var2628!12) var1725)) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14) 

(declare-const var2628!13 var551)
(declare-const var1725!1 var439)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1065-init=([], javax.swing.JToolBar), <init>/954685434=([javax.swing.JToolBar], void), putClientProperty/-942553159=([javax.swing.JComponent, java.lang.Object, java.lang.Object], void), cast-from-var1065-to-var2474=([javax.swing.JToolBar], javax.swing.JComponent), cast-from-String-to-var2344=([java.lang.String], java.lang.Object), cast-from-var834-to-var2344=([java.lang.Boolean], java.lang.Object), var551-init=([], javax.swing.JComboBox), <init>/31412616=([javax.swing.JComboBox], void), _fontSizeCombo/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JComboBox), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3577-to-var2344=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), var3306_getSystemClassLoader/-483392723=([], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var1929-init=([], javax.swing.JButton), <init>/-1005293566=([javax.swing.JButton, java.lang.String], void), setToolTipText/33204293=([javax.swing.JComponent, java.lang.String], void), cast-from-var1929-to-var2474=([javax.swing.JButton], javax.swing.JComponent), var2955-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$29), <init>/895924084=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var1929-to-var2403=([javax.swing.JButton], javax.swing.AbstractButton), cast-from-var2955-to-var2680=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29], java.awt.event.ActionListener), var3410_getDefaultToolkit/1070133764=([], java.awt.Toolkit), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), getFontList/-357147281=([java.awt.Toolkit], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void), var2840-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$30), <init>/998408842=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-2124801873=([javax.swing.JComboBox, java.awt.event.ActionListener], void), cast-from-var2840-to-var2680=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30], java.awt.event.ActionListener), addItem/991962143=([javax.swing.JComboBox, java.lang.Object], void), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), String_valueOf/1240665136=([int], java.lang.String), var2231-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$31), <init>/-168287477=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), cast-from-var2231-to-var2680=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31], java.awt.event.ActionListener), var531-init=([], javax.swing.JLabel), <init>/-829434568=([javax.swing.JLabel, java.lang.String], void), add/1696452917=([java.awt.Container, java.awt.Component], java.awt.Component), cast-from-var1065-to-var2726=([javax.swing.JToolBar], java.awt.Container), cast-from-var531-to-var55=([javax.swing.JLabel], java.awt.Component), cast-from-var551-to-var55=([javax.swing.JComboBox], java.awt.Component), addSeparator/-692065624=([javax.swing.JToolBar], void), cast-from-var1929-to-var55=([javax.swing.JButton], java.awt.Component), setAlignmentY/-1214558670=([javax.swing.JComponent, float], void), setAlignmentX/592895793=([javax.swing.JComponent, float], void), getPreferredSize/784517592=([javax.swing.JComponent], java.awt.Dimension), cast-from-var551-to-var2474=([javax.swing.JComboBox], javax.swing.JComponent), setMaximumSize/1529350009=([javax.swing.JComponent, java.awt.Dimension], void)}
; {var3577=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1804=r4, var1065=javax.swing.JToolBar, var3961=$r0, var834=java.lang.Boolean, var3497=$r1, var2474=javax.swing.JComponent, var2344=java.lang.Object, var2949="JToolBar.isRollover", var551=javax.swing.JComboBox, var1952=$r2, var2628=$r3, var3014=$r5, var3306=java.lang.ClassLoader, var1977=r20, var1084=java.net.URL, var3707=$r19, var1810=javax.swing.ImageIcon, var1723=r21, var1929=javax.swing.JButton, var1028=$r6, var3481="Clear Log Table", var1805="Clear Log Table.", var2955=org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, var253=$r7, var2403=javax.swing.AbstractButton, var2680=java.awt.event.ActionListener, var3410=java.awt.Toolkit, var1710=$r17, var2390=$z0, var1170=r22, var77=i1, var728=$i2, var3824=$r8, var2840=org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, var2391=$r9, var2931="8", var3290="9", var1415="10", var3566="12", var3058="14", var1131="16", var1902="18", var3830="24", var1336=$i0, var1791=$r10, var2231=org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, var395=$r11, var531=javax.swing.JLabel, var2466=$r12, var2343=" Font: ", var2726=java.awt.Container, var55=java.awt.Component, var2414=0.5F, var439=java.awt.Dimension, var782=$r13, var1725=$r14}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3577, r4=var1804, javax.swing.JToolBar=var1065, $r0=var3961, java.lang.Boolean=var834, $r1=var3497, javax.swing.JComponent=var2474, java.lang.Object=var2344, "JToolBar.isRollover"=var2949, javax.swing.JComboBox=var551, $r2=var1952, $r3=var2628, $r5=var3014, java.lang.ClassLoader=var3306, r20=var1977, java.net.URL=var1084, $r19=var3707, javax.swing.ImageIcon=var1810, r21=var1723, javax.swing.JButton=var1929, $r6=var1028, "Clear Log Table"=var3481, "Clear Log Table."=var1805, org.apache.log4j.lf5.viewer.LogBrokerMonitor$29=var2955, $r7=var253, javax.swing.AbstractButton=var2403, java.awt.event.ActionListener=var2680, java.awt.Toolkit=var3410, $r17=var1710, $z0=var2390, r22=var1170, i1=var77, $i2=var728, $r8=var3824, org.apache.log4j.lf5.viewer.LogBrokerMonitor$30=var2840, $r9=var2391, "8"=var2931, "9"=var3290, "10"=var1415, "12"=var3566, "14"=var3058, "16"=var1131, "18"=var1902, "24"=var3830, $i0=var1336, $r10=var1791, org.apache.log4j.lf5.viewer.LogBrokerMonitor$31=var2231, $r11=var395, javax.swing.JLabel=var531, $r12=var2466, " Font: "=var2343, java.awt.Container=var2726, java.awt.Component=var55, 0.5F=var2414, java.awt.Dimension=var439, $r13=var782, $r14=var1725}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new javax.swing.JToolBar;	specialinvoke $r0.<javax.swing.JToolBar: void <init>()>();	$r1 = <java.lang.Boolean: java.lang.Boolean TRUE>;	virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1);	$r2 = new javax.swing.JComboBox;	specialinvoke $r2.<javax.swing.JComboBox: void <init>()>();	$r3 = new javax.swing.JComboBox;	specialinvoke $r3.<javax.swing.JComboBox: void <init>()>();	r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3;	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r20 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	$r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r21 = null;	if $r19 == null goto $r6 = new javax.swing.JButton;	$r6 = new javax.swing.JButton;	specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table");	if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	$r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29;	specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7);	$r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>();	$z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts>;	if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	i1 = 0;	$i2 = lengthof r22;	if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	$r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8);	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9);	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24");	$i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize>;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11);	$r12 = new javax.swing.JLabel;	specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ");	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3);	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F);	$r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13);	$r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14);	return $r0
;block_num 9