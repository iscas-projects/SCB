(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2112 0)
(declare-sort var3335 0)
(declare-sort var1049 0)
(declare-sort var3484 0)
(declare-sort var2736 0)
(declare-sort var2948 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _mruFileManager/-1291859940 (var2112) var1049)
(declare-fun getMRUFileList/-419557350 (var1049) (Array Int String))
(declare-fun addSeparator/221047608 (var3335) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3484-init () var3484)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1845021834 (String Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/-692198302 (var3484 String) void)
(declare-fun setMnemonic/-1133935054 (var2736 Int) void)
(declare-fun cast-from-var3484-to-var2736 (var3484) var2736)
(declare-fun var2948-init () var2948)
(declare-fun <init>/-1591195691 (var2948 var2112) void)
(declare-fun addActionListener/-1143302268 (var2736 var3410) void)
(declare-fun cast-from-var2948-to-var3410 (var2948) var3410)
(declare-fun add/-2007384917 (var3335 var3484) var3484)
(declare-const null-var2112 var2112)
(declare-const null-var3335 var3335)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var136 var2112) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var136 null-var2112)))
(declare-const var2226 var3335) ; Statement: r3 := @parameter0: javax.swing.JMenu 
(assert (not (= var2226 null-var3335)))
(define-const var3501 var1049 (_mruFileManager/-1291859940 var136)) ; Statement: $r1 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager> 
(assert true)
(define-const var3763 (Array Int String) (getMRUFileList/-419557350 var3501)) ; Statement: r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.configure.MRUFileManager: java.lang.String[] getMRUFileList()>() 
 ; Statement: if r2 == null goto return 
(assert (not (= var3763 null-__Array__Int__String__))) ; Negate: Cond: r2 == null  
(assert true)
;(assert (addSeparator/221047608 var2226)) ; Statement: virtualinvoke r3.<javax.swing.JMenu: void addSeparator()>() 

(declare-const var2226!1 var3335)
(define-const var2080 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2811 Int (getLength-Arr-String-1 var3763)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i3 >= $i0 goto return 
(assert (not (>= var2080 var2811))) ; Negate: Cond: i3 >= $i0  
(define-const var3704 var3484 var3484-init) ; Statement: $r4 = new javax.swing.JMenuItem 
(define-const var1659 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1659)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1659!1 String)
(define-const var33 Int (+ var2080 1)) ; Statement: $i1 = i3 + 1 
(assert true)
(define-const var3545 String (append/1845021834 var1659!1 var33)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var3747 String (append/1560614132 var3545 " ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3545!1 String)
(assert (str.prefixof var3545 var3545!1))
(define-const var866 String (select var3763 var2080)) ; Statement: $r7 = r2[i3] 
(assert true)
(define-const var988 String (append/1560614132 var3747 var866)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var3747!1 String)
(assert (str.prefixof var3747 var3747!1))
(assert true)
(define-const var3115 String (toString/-222306083 var988)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-692198302 var3704 var3115)) ; Statement: specialinvoke $r4.<javax.swing.JMenuItem: void <init>(java.lang.String)>($r10) 

(declare-const var3704!1 var3484)
(declare-const var3115!1 String)
(define-const var84 Int (+ var2080 1)) ; Statement: $i2 = i3 + 1 
(assert true)
;(assert (setMnemonic/-1133935054 (cast-from-var3484-to-var2736 var3704!1) var84)) ; Statement: virtualinvoke $r4.<javax.swing.JMenuItem: void setMnemonic(int)>($i2) 

(declare-const var3704!2 var3484)
(declare-const var84!1 Int)
(define-const var876 var2948 var2948-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$19 
(assert true)
;(assert (<init>/-1591195691 var876 var136)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$19: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r0) 

(declare-const var876!1 var2948)
(declare-const var136!1 var2112)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var3484-to-var2736 var3704!2) (cast-from-var2948-to-var3410 var876!1))) ; Statement: virtualinvoke $r4.<javax.swing.JMenuItem: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var3704!3 var3484)
(declare-const var876!2 var2948)
(assert true)
;(assert (add/-2007384917 var2226!1 var3704!3)) ; Statement: virtualinvoke r3.<javax.swing.JMenu: javax.swing.JMenuItem add(javax.swing.JMenuItem)>($r4) 

(declare-const var2226!2 var3335)
(declare-const var3704!4 var3484)
(define-const var2080!1 Int (+ var2080 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i0 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var2811!1 Int (getLength-Arr-String-1 var3763)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i3 >= $i0 goto return 
(assert (not (>= var2080!1 var2811!1))) ; Negate: Cond: i3 >= $i0  
(define-const var3704!5 var3484 var3484-init) ; Statement: $r4 = new javax.swing.JMenuItem 
(define-const var1659!2 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1659!2)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1659!3 String)
(define-const var33!1 Int (+ var2080!1 1)) ; Statement: $i1 = i3 + 1 
(assert true)
(define-const var3545!2 String (append/1845021834 var1659!3 var33!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var3747!2 String (append/1560614132 var3545!2 " ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3545!3 String)
(assert (str.prefixof var3545!2 var3545!3))
(define-const var866!1 String (select var3763 var2080!1)) ; Statement: $r7 = r2[i3] 
(assert true)
(define-const var988!1 String (append/1560614132 var3747!2 var866!1)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var3747!3 String)
(assert (str.prefixof var3747!2 var3747!3))
(assert true)
(define-const var3115!2 String (toString/-222306083 var988!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-692198302 var3704!5 var3115!2)) ; Statement: specialinvoke $r4.<javax.swing.JMenuItem: void <init>(java.lang.String)>($r10) 

(declare-const var3704!6 var3484)
(declare-const var3115!3 String)
(define-const var84!2 Int (+ var2080!1 1)) ; Statement: $i2 = i3 + 1 
(assert true)
;(assert (setMnemonic/-1133935054 (cast-from-var3484-to-var2736 var3704!6) var84!2)) ; Statement: virtualinvoke $r4.<javax.swing.JMenuItem: void setMnemonic(int)>($i2) 

(declare-const var3704!7 var3484)
(declare-const var84!3 Int)
(define-const var876!3 var2948 var2948-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$19 
(assert true)
;(assert (<init>/-1591195691 var876!3 var136!1)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$19: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r0) 

(declare-const var876!4 var2948)
(declare-const var136!2 var2112)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var3484-to-var2736 var3704!7) (cast-from-var2948-to-var3410 var876!4))) ; Statement: virtualinvoke $r4.<javax.swing.JMenuItem: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var3704!8 var3484)
(declare-const var876!5 var2948)
(assert true)
;(assert (add/-2007384917 var2226!2 var3704!8)) ; Statement: virtualinvoke r3.<javax.swing.JMenu: javax.swing.JMenuItem add(javax.swing.JMenuItem)>($r4) 

(declare-const var2226!3 var3335)
(declare-const var3704!9 var3484)
(define-const var2080!2 Int (+ var2080!1 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i0 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var2811!2 Int (getLength-Arr-String-1 var3763)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i3 >= $i0 goto return 
(assert (>= var2080!2 var2811!2)) ; Cond: i3 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_mruFileManager/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.configure.MRUFileManager), getMRUFileList/-419557350=([org.apache.log4j.lf5.viewer.configure.MRUFileManager], java.lang.String[]), addSeparator/221047608=([javax.swing.JMenu], void), getLength-Arr-String-1=([java.lang.String[]], int), var3484-init=([], javax.swing.JMenuItem), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/-692198302=([javax.swing.JMenuItem, java.lang.String], void), setMnemonic/-1133935054=([javax.swing.AbstractButton, int], void), cast-from-var3484-to-var2736=([javax.swing.JMenuItem], javax.swing.AbstractButton), var2948-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$19), <init>/-1591195691=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$19, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var2948-to-var3410=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$19], java.awt.event.ActionListener), add/-2007384917=([javax.swing.JMenu, javax.swing.JMenuItem], javax.swing.JMenuItem)}
; {var2112=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var136=r0, var3335=javax.swing.JMenu, var2226=r3, var1049=org.apache.log4j.lf5.viewer.configure.MRUFileManager, var3501=$r1, var3763=r2, var2080=i3, var2811=$i0, var3484=javax.swing.JMenuItem, var3704=$r4, var1659=$r5, var33=$i1, var3545=$r6, var3747=$r8, var866=$r7, var988=$r9, var3115=$r10, var84=$i2, var2736=javax.swing.AbstractButton, var2948=org.apache.log4j.lf5.viewer.LogBrokerMonitor$19, var876=$r11, var3410=java.awt.event.ActionListener}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var2112, r0=var136, javax.swing.JMenu=var3335, r3=var2226, org.apache.log4j.lf5.viewer.configure.MRUFileManager=var1049, $r1=var3501, r2=var3763, i3=var2080, $i0=var2811, javax.swing.JMenuItem=var3484, $r4=var3704, $r5=var1659, $i1=var33, $r6=var3545, $r8=var3747, $r7=var866, $r9=var988, $r10=var3115, $i2=var84, javax.swing.AbstractButton=var2736, org.apache.log4j.lf5.viewer.LogBrokerMonitor$19=var2948, $r11=var876, java.awt.event.ActionListener=var3410}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r3 := @parameter0: javax.swing.JMenu;	$r1 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager>;	r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.configure.MRUFileManager: java.lang.String[] getMRUFileList()>();	if r2 == null goto return;	virtualinvoke r3.<javax.swing.JMenu: void addSeparator()>();	i3 = 0;	$i0 = lengthof r2;	if i3 >= $i0 goto return;	$r4 = new javax.swing.JMenuItem;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$i1 = i3 + 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r7 = r2[i3];	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r4.<javax.swing.JMenuItem: void <init>(java.lang.String)>($r10);	$i2 = i3 + 1;	virtualinvoke $r4.<javax.swing.JMenuItem: void setMnemonic(int)>($i2);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$19;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$19: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r0);	virtualinvoke $r4.<javax.swing.JMenuItem: void addActionListener(java.awt.event.ActionListener)>($r11);	virtualinvoke r3.<javax.swing.JMenu: javax.swing.JMenuItem add(javax.swing.JMenuItem)>($r4);	i3 = i3 + 1;	goto [?= $i0 = lengthof r2];	$i0 = lengthof r2;	if i3 >= $i0 goto return;	$r4 = new javax.swing.JMenuItem;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$i1 = i3 + 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r7 = r2[i3];	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r4.<javax.swing.JMenuItem: void <init>(java.lang.String)>($r10);	$i2 = i3 + 1;	virtualinvoke $r4.<javax.swing.JMenuItem: void setMnemonic(int)>($i2);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$19;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$19: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r0);	virtualinvoke $r4.<javax.swing.JMenuItem: void addActionListener(java.awt.event.ActionListener)>($r11);	virtualinvoke r3.<javax.swing.JMenu: javax.swing.JMenuItem add(javax.swing.JMenuItem)>($r4);	i3 = i3 + 1;	goto [?= $i0 = lengthof r2];	$i0 = lengthof r2;	if i3 >= $i0 goto return;	return
;block_num 8