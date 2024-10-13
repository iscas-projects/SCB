(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1055 0)
(declare-sort var803 0)
(declare-sort var402 0)
(declare-sort var2685 0)
(declare-sort var727 0)
(declare-sort var3556 0)
(declare-sort var1032 0)
(declare-sort var3466 0)
(declare-sort var312 0)
(declare-sort var2585 0)
(declare-sort var2938 0)
(declare-sort var140 0)
(declare-sort var3820 0)
(declare-sort var1123 0)
(declare-sort var1617 0)
(declare-sort var2174 0)
(declare-sort var2078 0)
(declare-sort var3037 0)
(declare-sort var2694 0)
(declare-sort var3640 0)
(declare-sort var3168 0)
(declare-sort var1766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var803-init () var803)
(declare-fun <init>/954685434 (var803) void)
(declare-fun putClientProperty/-942553159 (var2685 var727 var727) void)
(declare-fun cast-from-var803-to-var2685 (var803) var2685)
(declare-fun cast-from-String-to-var727 (String) var727)
(declare-fun cast-from-var402-to-var727 (var402) var727)
(declare-fun var3556-init () var3556)
(declare-fun <init>/31412616 (var3556) void)
(declare-fun _fontSizeCombo/-1291859940 (var1055) var3556)
(declare-fun getClass/1258963082 (var727) ClassObject)
(declare-fun cast-from-var1055-to-var727 (var1055) var727)
(declare-fun getClassLoader/-563698447 (ClassObject) var1032)
(declare-fun getResource/282459787 (var1032 String) var3466)
(declare-fun var2585-init () var2585)
(declare-fun <init>/-1005293566 (var2585 String) void)
(declare-fun setIcon/1650080689 (var2938 var140) void)
(declare-fun cast-from-var2585-to-var2938 (var2585) var2938)
(declare-fun cast-from-var312-to-var140 (var312) var140)
(declare-fun setToolTipText/33204293 (var2685 String) void)
(declare-fun cast-from-var2585-to-var2685 (var2585) var2685)
(declare-fun var3820-init () var3820)
(declare-fun <init>/895924084 (var3820 var1055) void)
(declare-fun addActionListener/-1143302268 (var2938 var1123) void)
(declare-fun cast-from-var3820-to-var1123 (var3820) var1123)
(declare-fun var1617_getDefaultToolkit/1070133764 () var1617)
(declare-fun _loadSystemFonts/-1291859940 (var1055) Bool)
(declare-fun var2174_getLocalGraphicsEnvironment/1274578704 () var2174)
(declare-fun getAvailableFontFamilyNames/1396040614 (var2174) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun _fontName/-1291859940 (var1055) String)
(declare-fun setSelectedItem/1943063843 (var3556 var727) void)
(declare-fun var2078-init () var2078)
(declare-fun <init>/998408842 (var2078 var1055) void)
(declare-fun addActionListener/-2124801873 (var3556 var1123) void)
(declare-fun cast-from-var2078-to-var1123 (var2078) var1123)
(declare-fun addItem/991962143 (var3556 var727) void)
(declare-fun _fontSize/-1291859940 (var1055) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var3037-init () var3037)
(declare-fun <init>/-168287477 (var3037 var1055) void)
(declare-fun cast-from-var3037-to-var1123 (var3037) var1123)
(declare-fun var2694-init () var2694)
(declare-fun <init>/-829434568 (var2694 String) void)
(declare-fun add/1696452917 (var3640 var3168) var3168)
(declare-fun cast-from-var803-to-var3640 (var803) var3640)
(declare-fun cast-from-var2694-to-var3168 (var2694) var3168)
(declare-fun cast-from-var3556-to-var3168 (var3556) var3168)
(declare-fun addSeparator/-692065624 (var803) void)
(declare-fun cast-from-var2585-to-var3168 (var2585) var3168)
(declare-fun setAlignmentY/-1214558670 (var2685 Float32) void)
(declare-fun setAlignmentX/592895793 (var2685 Float32) void)
(declare-fun getPreferredSize/784517592 (var2685) var1766)
(declare-fun cast-from-var3556-to-var2685 (var3556) var2685)
(declare-fun setMaximumSize/1529350009 (var2685 var1766) void)
(declare-const null-var1055 var1055)
(declare-const var402-TRUE var402)
(declare-const null-var1032 var1032)
(declare-const null-var312 var312)
(declare-const null-var3466 var3466)
(declare-const var955 var1055) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var955 null-var1055)))
(define-const var2684 var803 var803-init) ; Statement: $r0 = new javax.swing.JToolBar 
(assert true)
;(assert (<init>/954685434 var2684)) ; Statement: specialinvoke $r0.<javax.swing.JToolBar: void <init>()>() 

(declare-const var2684!1 var803)
(define-const var999 var402 var402-TRUE) ; Statement: $r1 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
;(assert (putClientProperty/-942553159 (cast-from-var803-to-var2685 var2684!1) (cast-from-String-to-var727 "JToolBar.isRollover") (cast-from-var402-to-var727 var999))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1) 

(declare-const var2684!2 var803)
(declare-const var1364 String)
(declare-const var999!1 var402)
(define-const var3667 var3556 var3556-init) ; Statement: $r2 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var3667)) ; Statement: specialinvoke $r2.<javax.swing.JComboBox: void <init>()>() 

(declare-const var3667!1 var3556)
(define-const var3328 var3556 var3556-init) ; Statement: $r3 = new javax.swing.JComboBox 
(assert true)
;(assert (<init>/31412616 var3328)) ; Statement: specialinvoke $r3.<javax.swing.JComboBox: void <init>()>() 

(declare-const var3328!1 var3556)
(declare-const var955!1 var1055)
(assert (not (= var955!1 null-var1055)))
(assert (= (_fontSizeCombo/-1291859940 var955!1) var3328!1)) ; Statement: r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3 
(assert true)
(define-const var869 ClassObject (getClass/1258963082 (cast-from-var1055-to-var727 var955!1))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var539 var1032 (getClassLoader/-563698447 var869)) ; Statement: r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(assert (not (= var539 null-var1032))) ; Cond: r20 != null 
(assert true)
(define-const var155 var3466 (getResource/282459787 var539 "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif")) ; Statement: $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif") 
(define-const var1358 var312 null-var312) ; Statement: r21 = null 
 ; Statement: if $r19 == null goto $r6 = new javax.swing.JButton 
(assert (= var155 null-var3466)) ; Cond: $r19 == null 
(define-const var3367 var2585 var2585-init) ; Statement: $r6 = new javax.swing.JButton 
(assert true)
;(assert (<init>/-1005293566 var3367 "Clear Log Table")) ; Statement: specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table") 

(declare-const var3367!1 var2585)
(declare-const var3835 String)
 ; Statement: if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 
(assert (not (= var1358 null-var312))) ; Negate: Cond: r21 == null  
(assert true)
;(assert (setIcon/1650080689 (cast-from-var2585-to-var2938 var3367!1) (cast-from-var312-to-var140 var1358))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setIcon(javax.swing.Icon)>(r21) 

(declare-const var3367!2 var2585)
(declare-const var1358!1 var312)
(assert true) ; Non Conditional
(assert true)
;(assert (setToolTipText/33204293 (cast-from-var2585-to-var2685 var3367!2) "Clear Log Table.")) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.") 

(declare-const var3367!3 var2585)
(declare-const var1088 String)
(define-const var3571 var3820 var3820-init) ; Statement: $r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29 
(assert true)
;(assert (<init>/895924084 var3571 var955!1)) ; Statement: specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var3571!1 var3820)
(declare-const var955!2 var1055)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var2585-to-var2938 var3367!3) (cast-from-var3820-to-var1123 var3571!1))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7) 

(declare-const var3367!4 var2585)
(declare-const var3571!2 var3820)
(define-const var2737 var1617 var1617_getDefaultToolkit/1070133764) ; Statement: $r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>() 
(define-const var906 Bool (_loadSystemFonts/-1291859940 var955!2)) ; Statement: $z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts> 
 ; Statement: if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>() 
(assert (not (= (ite var906 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1600 var2174 var2174_getLocalGraphicsEnvironment/1274578704) ; Statement: $r16 = staticinvoke <java.awt.GraphicsEnvironment: java.awt.GraphicsEnvironment getLocalGraphicsEnvironment()>() 
(assert true)
(define-const var2253 (Array Int String) (getAvailableFontFamilyNames/1396040614 var1600)) ; Statement: r22 = virtualinvoke $r16.<java.awt.GraphicsEnvironment: java.lang.String[] getAvailableFontFamilyNames()>() 
 ; Statement: goto [?= i1 = 0] 
(assert true) ; Non Conditional
(define-const var2909 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2267 Int (getLength-Arr-String-1 var2253)) ; Statement: $i2 = lengthof r22 
 ; Statement: if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert (>= var2909 var2267)) ; Cond: i1 >= $i2 
(define-const var1738 String (_fontName/-1291859940 var955!2)) ; Statement: $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName> 
(assert true)
;(assert (setSelectedItem/1943063843 var3667!1 (cast-from-String-to-var727 var1738))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8) 

(declare-const var3667!2 var3556)
(declare-const var1738!1 String)
(define-const var2586 var2078 var2078-init) ; Statement: $r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30 
(assert true)
;(assert (<init>/998408842 var2586 var955!2)) ; Statement: specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var2586!1 var2078)
(declare-const var955!3 var1055)
(assert true)
;(assert (addActionListener/-2124801873 var3667!2 (cast-from-var2078-to-var1123 var2586!1))) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9) 

(declare-const var3667!3 var3556)
(declare-const var2586!2 var2078)
(assert true)
;(assert (addItem/991962143 var3328!1 (cast-from-String-to-var727 "8"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8") 

(declare-const var3328!2 var3556)
(declare-const var850 String)
(assert true)
;(assert (addItem/991962143 var3328!2 (cast-from-String-to-var727 "9"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9") 

(declare-const var3328!3 var3556)
(declare-const var1517 String)
(assert true)
;(assert (addItem/991962143 var3328!3 (cast-from-String-to-var727 "10"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10") 

(declare-const var3328!4 var3556)
(declare-const var3458 String)
(assert true)
;(assert (addItem/991962143 var3328!4 (cast-from-String-to-var727 "12"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12") 

(declare-const var3328!5 var3556)
(declare-const var2677 String)
(assert true)
;(assert (addItem/991962143 var3328!5 (cast-from-String-to-var727 "14"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14") 

(declare-const var3328!6 var3556)
(declare-const var125 String)
(assert true)
;(assert (addItem/991962143 var3328!6 (cast-from-String-to-var727 "16"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16") 

(declare-const var3328!7 var3556)
(declare-const var1199 String)
(assert true)
;(assert (addItem/991962143 var3328!7 (cast-from-String-to-var727 "18"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18") 

(declare-const var3328!8 var3556)
(declare-const var3574 String)
(assert true)
;(assert (addItem/991962143 var3328!8 (cast-from-String-to-var727 "24"))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24") 

(declare-const var3328!9 var3556)
(declare-const var358 String)
(define-const var1308 Int (_fontSize/-1291859940 var955!3)) ; Statement: $i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize> 
(define-const var3779 String (String_valueOf/1240665136 var1308)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setSelectedItem/1943063843 var3328!9 (cast-from-String-to-var727 var3779))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10) 

(declare-const var3328!10 var3556)
(declare-const var3779!1 String)
(define-const var1001 var3037 var3037-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31 
(assert true)
;(assert (<init>/-168287477 var1001 var955!3)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4) 

(declare-const var1001!1 var3037)
(declare-const var955!4 var1055)
(assert true)
;(assert (addActionListener/-2124801873 var3328!10 (cast-from-var3037-to-var1123 var1001!1))) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var3328!11 var3556)
(declare-const var1001!2 var3037)
(define-const var51 var2694 var2694-init) ; Statement: $r12 = new javax.swing.JLabel 
(assert true)
;(assert (<init>/-829434568 var51 " Font: ")) ; Statement: specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ") 

(declare-const var51!1 var2694)
(declare-const var1906 String)
(assert true)
;(assert (add/1696452917 (cast-from-var803-to-var3640 var2684!2) (cast-from-var2694-to-var3168 var51!1))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12) 

(declare-const var2684!3 var803)
(declare-const var51!2 var2694)
(assert true)
;(assert (add/1696452917 (cast-from-var803-to-var3640 var2684!3) (cast-from-var3556-to-var3168 var3667!3))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2) 

(declare-const var2684!4 var803)
(declare-const var3667!4 var3556)
(assert true)
;(assert (add/1696452917 (cast-from-var803-to-var3640 var2684!4) (cast-from-var3556-to-var3168 var3328!11))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3) 

(declare-const var2684!5 var803)
(declare-const var3328!12 var3556)
(assert true)
;(assert (addSeparator/-692065624 var2684!5)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var2684!6 var803)
(assert true)
;(assert (addSeparator/-692065624 var2684!6)) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>() 

(declare-const var2684!7 var803)
(assert true)
;(assert (add/1696452917 (cast-from-var803-to-var3640 var2684!7) (cast-from-var2585-to-var3168 var3367!4))) ; Statement: virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6) 

(declare-const var2684!8 var803)
(declare-const var3367!5 var2585)
(assert true)
;(assert (setAlignmentY/-1214558670 (cast-from-var2585-to-var2685 var3367!5) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F) 

(declare-const var3367!6 var2585)
(declare-const var716 Float32)
(assert true)
;(assert (setAlignmentX/592895793 (cast-from-var2585-to-var2685 var3367!6) ((_ to_fp 8 24) #x3f000000))) ; Statement: virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F) 

(declare-const var3367!7 var2585)
(declare-const var716!1 Float32)
(assert true)
(define-const var1229 var1766 (getPreferredSize/784517592 (cast-from-var3556-to-var2685 var3667!4))) ; Statement: $r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var3556-to-var2685 var3667!4) var1229)) ; Statement: virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13) 

(declare-const var3667!5 var3556)
(declare-const var1229!1 var1766)
(assert true)
(define-const var3885 var1766 (getPreferredSize/784517592 (cast-from-var3556-to-var2685 var3328!12))) ; Statement: $r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>() 
(assert true)
;(assert (setMaximumSize/1529350009 (cast-from-var3556-to-var2685 var3328!12) var3885)) ; Statement: virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14) 

(declare-const var3328!13 var3556)
(declare-const var3885!1 var1766)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var803-init=([], javax.swing.JToolBar), <init>/954685434=([javax.swing.JToolBar], void), putClientProperty/-942553159=([javax.swing.JComponent, java.lang.Object, java.lang.Object], void), cast-from-var803-to-var2685=([javax.swing.JToolBar], javax.swing.JComponent), cast-from-String-to-var727=([java.lang.String], java.lang.Object), cast-from-var402-to-var727=([java.lang.Boolean], java.lang.Object), var3556-init=([], javax.swing.JComboBox), <init>/31412616=([javax.swing.JComboBox], void), _fontSizeCombo/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], javax.swing.JComboBox), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1055-to-var727=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var2585-init=([], javax.swing.JButton), <init>/-1005293566=([javax.swing.JButton, java.lang.String], void), setIcon/1650080689=([javax.swing.AbstractButton, javax.swing.Icon], void), cast-from-var2585-to-var2938=([javax.swing.JButton], javax.swing.AbstractButton), cast-from-var312-to-var140=([javax.swing.ImageIcon], javax.swing.Icon), setToolTipText/33204293=([javax.swing.JComponent, java.lang.String], void), cast-from-var2585-to-var2685=([javax.swing.JButton], javax.swing.JComponent), var3820-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$29), <init>/895924084=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var3820-to-var1123=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$29], java.awt.event.ActionListener), var1617_getDefaultToolkit/1070133764=([], java.awt.Toolkit), _loadSystemFonts/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], boolean), var2174_getLocalGraphicsEnvironment/1274578704=([], java.awt.GraphicsEnvironment), getAvailableFontFamilyNames/1396040614=([java.awt.GraphicsEnvironment], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), _fontName/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], java.lang.String), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void), var2078-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$30), <init>/998408842=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-2124801873=([javax.swing.JComboBox, java.awt.event.ActionListener], void), cast-from-var2078-to-var1123=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$30], java.awt.event.ActionListener), addItem/991962143=([javax.swing.JComboBox, java.lang.Object], void), _fontSize/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], int), String_valueOf/1240665136=([int], java.lang.String), var3037-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$31), <init>/-168287477=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), cast-from-var3037-to-var1123=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$31], java.awt.event.ActionListener), var2694-init=([], javax.swing.JLabel), <init>/-829434568=([javax.swing.JLabel, java.lang.String], void), add/1696452917=([java.awt.Container, java.awt.Component], java.awt.Component), cast-from-var803-to-var3640=([javax.swing.JToolBar], java.awt.Container), cast-from-var2694-to-var3168=([javax.swing.JLabel], java.awt.Component), cast-from-var3556-to-var3168=([javax.swing.JComboBox], java.awt.Component), addSeparator/-692065624=([javax.swing.JToolBar], void), cast-from-var2585-to-var3168=([javax.swing.JButton], java.awt.Component), setAlignmentY/-1214558670=([javax.swing.JComponent, float], void), setAlignmentX/592895793=([javax.swing.JComponent, float], void), getPreferredSize/784517592=([javax.swing.JComponent], java.awt.Dimension), cast-from-var3556-to-var2685=([javax.swing.JComboBox], javax.swing.JComponent), setMaximumSize/1529350009=([javax.swing.JComponent, java.awt.Dimension], void)}
; {var1055=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var955=r4, var803=javax.swing.JToolBar, var2684=$r0, var402=java.lang.Boolean, var999=$r1, var2685=javax.swing.JComponent, var727=java.lang.Object, var1364="JToolBar.isRollover", var3556=javax.swing.JComboBox, var3667=$r2, var3328=$r3, var869=$r5, var1032=java.lang.ClassLoader, var539=r20, var3466=java.net.URL, var155=$r19, var312=javax.swing.ImageIcon, var1358=r21, var2585=javax.swing.JButton, var3367=$r6, var3835="Clear Log Table", var2938=javax.swing.AbstractButton, var140=javax.swing.Icon, var1088="Clear Log Table.", var3820=org.apache.log4j.lf5.viewer.LogBrokerMonitor$29, var3571=$r7, var1123=java.awt.event.ActionListener, var1617=java.awt.Toolkit, var2737=$r17, var906=$z0, var2174=java.awt.GraphicsEnvironment, var1600=$r16, var2253=r22, var2909=i1, var2267=$i2, var1738=$r8, var2078=org.apache.log4j.lf5.viewer.LogBrokerMonitor$30, var2586=$r9, var850="8", var1517="9", var3458="10", var2677="12", var125="14", var1199="16", var3574="18", var358="24", var1308=$i0, var3779=$r10, var3037=org.apache.log4j.lf5.viewer.LogBrokerMonitor$31, var1001=$r11, var2694=javax.swing.JLabel, var51=$r12, var1906=" Font: ", var3640=java.awt.Container, var3168=java.awt.Component, var716=0.5F, var1766=java.awt.Dimension, var1229=$r13, var3885=$r14}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1055, r4=var955, javax.swing.JToolBar=var803, $r0=var2684, java.lang.Boolean=var402, $r1=var999, javax.swing.JComponent=var2685, java.lang.Object=var727, "JToolBar.isRollover"=var1364, javax.swing.JComboBox=var3556, $r2=var3667, $r3=var3328, $r5=var869, java.lang.ClassLoader=var1032, r20=var539, java.net.URL=var3466, $r19=var155, javax.swing.ImageIcon=var312, r21=var1358, javax.swing.JButton=var2585, $r6=var3367, "Clear Log Table"=var3835, javax.swing.AbstractButton=var2938, javax.swing.Icon=var140, "Clear Log Table."=var1088, org.apache.log4j.lf5.viewer.LogBrokerMonitor$29=var3820, $r7=var3571, java.awt.event.ActionListener=var1123, java.awt.Toolkit=var1617, $r17=var2737, $z0=var906, java.awt.GraphicsEnvironment=var2174, $r16=var1600, r22=var2253, i1=var2909, $i2=var2267, $r8=var1738, org.apache.log4j.lf5.viewer.LogBrokerMonitor$30=var2078, $r9=var2586, "8"=var850, "9"=var1517, "10"=var3458, "12"=var2677, "14"=var125, "16"=var1199, "18"=var3574, "24"=var358, $i0=var1308, $r10=var3779, org.apache.log4j.lf5.viewer.LogBrokerMonitor$31=var3037, $r11=var1001, javax.swing.JLabel=var2694, $r12=var51, " Font: "=var1906, java.awt.Container=var3640, java.awt.Component=var3168, 0.5F=var716, java.awt.Dimension=var1766, $r13=var1229, $r14=var3885}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	$r0 = new javax.swing.JToolBar;	specialinvoke $r0.<javax.swing.JToolBar: void <init>()>();	$r1 = <java.lang.Boolean: java.lang.Boolean TRUE>;	virtualinvoke $r0.<javax.swing.JToolBar: void putClientProperty(java.lang.Object,java.lang.Object)>("JToolBar.isRollover", $r1);	$r2 = new javax.swing.JComboBox;	specialinvoke $r2.<javax.swing.JComboBox: void <init>()>();	$r3 = new javax.swing.JComboBox;	specialinvoke $r3.<javax.swing.JComboBox: void <init>()>();	r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: javax.swing.JComboBox _fontSizeCombo> = $r3;	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r5.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r20 != null goto $r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	$r19 = virtualinvoke r20.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>("org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif");	r21 = null;	if $r19 == null goto $r6 = new javax.swing.JButton;	$r6 = new javax.swing.JButton;	specialinvoke $r6.<javax.swing.JButton: void <init>(java.lang.String)>("Clear Log Table");	if r21 == null goto virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	virtualinvoke $r6.<javax.swing.JButton: void setIcon(javax.swing.Icon)>(r21);	virtualinvoke $r6.<javax.swing.JButton: void setToolTipText(java.lang.String)>("Clear Log Table.");	$r7 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$29;	specialinvoke $r7.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$29: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r6.<javax.swing.JButton: void addActionListener(java.awt.event.ActionListener)>($r7);	$r17 = staticinvoke <java.awt.Toolkit: java.awt.Toolkit getDefaultToolkit()>();	$z0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: boolean _loadSystemFonts>;	if $z0 == 0 goto r22 = virtualinvoke $r17.<java.awt.Toolkit: java.lang.String[] getFontList()>();	$r16 = staticinvoke <java.awt.GraphicsEnvironment: java.awt.GraphicsEnvironment getLocalGraphicsEnvironment()>();	r22 = virtualinvoke $r16.<java.awt.GraphicsEnvironment: java.lang.String[] getAvailableFontFamilyNames()>();	goto [?= i1 = 0];	i1 = 0;	$i2 = lengthof r22;	if i1 >= $i2 goto $r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	$r8 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: java.lang.String _fontName>;	virtualinvoke $r2.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r8);	$r9 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$30;	specialinvoke $r9.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$30: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r2.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r9);	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("8");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("9");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("10");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("12");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("14");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("16");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("18");	virtualinvoke $r3.<javax.swing.JComboBox: void addItem(java.lang.Object)>("24");	$i0 = r4.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: int _fontSize>;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r3.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>($r10);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$31;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$31: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r4);	virtualinvoke $r3.<javax.swing.JComboBox: void addActionListener(java.awt.event.ActionListener)>($r11);	$r12 = new javax.swing.JLabel;	specialinvoke $r12.<javax.swing.JLabel: void <init>(java.lang.String)>(" Font: ");	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r12);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r2);	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r3);	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: void addSeparator()>();	virtualinvoke $r0.<javax.swing.JToolBar: java.awt.Component add(java.awt.Component)>($r6);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentY(float)>(0.5F);	virtualinvoke $r6.<javax.swing.JButton: void setAlignmentX(float)>(0.5F);	$r13 = virtualinvoke $r2.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r2.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r13);	$r14 = virtualinvoke $r3.<javax.swing.JComboBox: java.awt.Dimension getPreferredSize()>();	virtualinvoke $r3.<javax.swing.JComboBox: void setMaximumSize(java.awt.Dimension)>($r14);	return $r0
;block_num 9