(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3497 0)
(declare-sort var3001 0)
(declare-sort var2163 0)
(declare-sort var325 0)
(declare-sort var678 0)
(declare-sort var1910 0)
(declare-sort var2107 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _mruFileManager/-1291859940 (var3497) var2163)
(declare-fun getMRUFileList/-419557350 (var2163) (Array Int String))
(declare-fun addSeparator/221047608 (var3001) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var325-init () var325)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1845021834 (String Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/-692198302 (var325 String) void)
(declare-fun setMnemonic/-1133935054 (var678 Int) void)
(declare-fun cast-from-var325-to-var678 (var325) var678)
(declare-fun var1910-init () var1910)
(declare-fun <init>/-1591195691 (var1910 var3497) void)
(declare-fun addActionListener/-1143302268 (var678 var2107) void)
(declare-fun cast-from-var1910-to-var2107 (var1910) var2107)
(declare-fun add/-2007384917 (var3001 var325) var325)
(declare-const null-var3497 var3497)
(declare-const null-var3001 var3001)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2373 var3497) ; Statement: r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2373 null-var3497)))
(declare-const var3981 var3001) ; Statement: r3 := @parameter0: javax.swing.JMenu 
(assert (not (= var3981 null-var3001)))
(define-const var2739 var2163 (_mruFileManager/-1291859940 var2373)) ; Statement: $r1 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager> 
(assert true)
(define-const var1770 (Array Int String) (getMRUFileList/-419557350 var2739)) ; Statement: r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.configure.MRUFileManager: java.lang.String[] getMRUFileList()>() 
 ; Statement: if r2 == null goto return 
(assert (not (= var1770 null-__Array__Int__String__))) ; Negate: Cond: r2 == null  
(assert true)
;(assert (addSeparator/221047608 var3981)) ; Statement: virtualinvoke r3.<javax.swing.JMenu: void addSeparator()>() 

(declare-const var3981!1 var3001)
(define-const var1528 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var13 Int (getLength-Arr-String-1 var1770)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i3 >= $i0 goto return 
(assert (not (>= var1528 var13))) ; Negate: Cond: i3 >= $i0  
(define-const var1452 var325 var325-init) ; Statement: $r4 = new javax.swing.JMenuItem 
(define-const var2512 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2512)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2512!1 String)
(define-const var326 Int (+ var1528 1)) ; Statement: $i1 = i3 + 1 
(assert true)
(define-const var3434 String (append/1845021834 var2512!1 var326)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var1264 String (append/1560614132 var3434 " ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3434!1 String)
(assert (str.prefixof var3434 var3434!1))
(define-const var3110 String (select var1770 var1528)) ; Statement: $r7 = r2[i3] 
(assert true)
(define-const var81 String (append/1560614132 var1264 var3110)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var1264!1 String)
(assert (str.prefixof var1264 var1264!1))
(assert true)
(define-const var2069 String (toString/-222306083 var81)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-692198302 var1452 var2069)) ; Statement: specialinvoke $r4.<javax.swing.JMenuItem: void <init>(java.lang.String)>($r10) 

(declare-const var1452!1 var325)
(declare-const var2069!1 String)
(define-const var3682 Int (+ var1528 1)) ; Statement: $i2 = i3 + 1 
(assert true)
;(assert (setMnemonic/-1133935054 (cast-from-var325-to-var678 var1452!1) var3682)) ; Statement: virtualinvoke $r4.<javax.swing.JMenuItem: void setMnemonic(int)>($i2) 

(declare-const var1452!2 var325)
(declare-const var3682!1 Int)
(define-const var1628 var1910 var1910-init) ; Statement: $r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$19 
(assert true)
;(assert (<init>/-1591195691 var1628 var2373)) ; Statement: specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$19: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r0) 

(declare-const var1628!1 var1910)
(declare-const var2373!1 var3497)
(assert true)
;(assert (addActionListener/-1143302268 (cast-from-var325-to-var678 var1452!2) (cast-from-var1910-to-var2107 var1628!1))) ; Statement: virtualinvoke $r4.<javax.swing.JMenuItem: void addActionListener(java.awt.event.ActionListener)>($r11) 

(declare-const var1452!3 var325)
(declare-const var1628!2 var1910)
(assert true)
;(assert (add/-2007384917 var3981!1 var1452!3)) ; Statement: virtualinvoke r3.<javax.swing.JMenu: javax.swing.JMenuItem add(javax.swing.JMenuItem)>($r4) 

(declare-const var3981!2 var3001)
(declare-const var1452!4 var325)
(define-const var1528!1 Int (+ var1528 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i0 = lengthof r2] 
(assert true) ; Non Conditional
(define-const var13!1 Int (getLength-Arr-String-1 var1770)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i3 >= $i0 goto return 
(assert (>= var1528!1 var13!1)) ; Cond: i3 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_mruFileManager/-1291859940=([org.apache.log4j.lf5.viewer.LogBrokerMonitor], org.apache.log4j.lf5.viewer.configure.MRUFileManager), getMRUFileList/-419557350=([org.apache.log4j.lf5.viewer.configure.MRUFileManager], java.lang.String[]), addSeparator/221047608=([javax.swing.JMenu], void), getLength-Arr-String-1=([java.lang.String[]], int), var325-init=([], javax.swing.JMenuItem), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/-692198302=([javax.swing.JMenuItem, java.lang.String], void), setMnemonic/-1133935054=([javax.swing.AbstractButton, int], void), cast-from-var325-to-var678=([javax.swing.JMenuItem], javax.swing.AbstractButton), var1910-init=([], org.apache.log4j.lf5.viewer.LogBrokerMonitor$19), <init>/-1591195691=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$19, org.apache.log4j.lf5.viewer.LogBrokerMonitor], void), addActionListener/-1143302268=([javax.swing.AbstractButton, java.awt.event.ActionListener], void), cast-from-var1910-to-var2107=([org.apache.log4j.lf5.viewer.LogBrokerMonitor$19], java.awt.event.ActionListener), add/-2007384917=([javax.swing.JMenu, javax.swing.JMenuItem], javax.swing.JMenuItem)}
; {var3497=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2373=r0, var3001=javax.swing.JMenu, var3981=r3, var2163=org.apache.log4j.lf5.viewer.configure.MRUFileManager, var2739=$r1, var1770=r2, var1528=i3, var13=$i0, var325=javax.swing.JMenuItem, var1452=$r4, var2512=$r5, var326=$i1, var3434=$r6, var1264=$r8, var3110=$r7, var81=$r9, var2069=$r10, var3682=$i2, var678=javax.swing.AbstractButton, var1910=org.apache.log4j.lf5.viewer.LogBrokerMonitor$19, var1628=$r11, var2107=java.awt.event.ActionListener}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3497, r0=var2373, javax.swing.JMenu=var3001, r3=var3981, org.apache.log4j.lf5.viewer.configure.MRUFileManager=var2163, $r1=var2739, r2=var1770, i3=var1528, $i0=var13, javax.swing.JMenuItem=var325, $r4=var1452, $r5=var2512, $i1=var326, $r6=var3434, $r8=var1264, $r7=var3110, $r9=var81, $r10=var2069, $i2=var3682, javax.swing.AbstractButton=var678, org.apache.log4j.lf5.viewer.LogBrokerMonitor$19=var1910, $r11=var1628, java.awt.event.ActionListener=var2107}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r3 := @parameter0: javax.swing.JMenu;	$r1 = r0.<org.apache.log4j.lf5.viewer.LogBrokerMonitor: org.apache.log4j.lf5.viewer.configure.MRUFileManager _mruFileManager>;	r2 = virtualinvoke $r1.<org.apache.log4j.lf5.viewer.configure.MRUFileManager: java.lang.String[] getMRUFileList()>();	if r2 == null goto return;	virtualinvoke r3.<javax.swing.JMenu: void addSeparator()>();	i3 = 0;	$i0 = lengthof r2;	if i3 >= $i0 goto return;	$r4 = new javax.swing.JMenuItem;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$i1 = i3 + 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r7 = r2[i3];	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r4.<javax.swing.JMenuItem: void <init>(java.lang.String)>($r10);	$i2 = i3 + 1;	virtualinvoke $r4.<javax.swing.JMenuItem: void setMnemonic(int)>($i2);	$r11 = new org.apache.log4j.lf5.viewer.LogBrokerMonitor$19;	specialinvoke $r11.<org.apache.log4j.lf5.viewer.LogBrokerMonitor$19: void <init>(org.apache.log4j.lf5.viewer.LogBrokerMonitor)>(r0);	virtualinvoke $r4.<javax.swing.JMenuItem: void addActionListener(java.awt.event.ActionListener)>($r11);	virtualinvoke r3.<javax.swing.JMenu: javax.swing.JMenuItem add(javax.swing.JMenuItem)>($r4);	i3 = i3 + 1;	goto [?= $i0 = lengthof r2];	$i0 = lengthof r2;	if i3 >= $i0 goto return;	return
;block_num 6