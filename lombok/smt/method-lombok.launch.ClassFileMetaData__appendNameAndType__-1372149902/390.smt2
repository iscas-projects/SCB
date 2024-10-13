(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offsets/-1693839518 (var3223) (Array Int Int))
(declare-fun utf8s/-1693839518 (var3223) (Array Int String))
(declare-fun readValue/-1551687558 (var3223 Int) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3223 var3223)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var732 var3223) ; Statement: r0 := @this: lombok.launch.ClassFileMetaData 
(assert (not (= var732 null-var3223)))
(declare-const var2897 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2897 null-String)))
(declare-const var1109 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1109 null-Int)))
(define-const var3327 (Array Int Int) (offsets/-1693839518 var732)) ; Statement: $r1 = r0.<lombok.launch.ClassFileMetaData: int[] offsets> 
(define-const var3909 Int (select var3327 var1109)) ; Statement: i1 = $r1[i0] 
(define-const var2957 (Array Int String) (utf8s/-1693839518 var732)) ; Statement: $r3 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(assert true)
(define-const var243 Int (readValue/-1551687558 var732 var3909)) ; Statement: $i2 = specialinvoke r0.<lombok.launch.ClassFileMetaData: int readValue(int)>(i1) 
(define-const var639 String (select var2957 var243)) ; Statement: $r4 = $r3[$i2] 
(assert true)
(define-const var74 String (append/672562846 var2897 var639)) ; Statement: $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2897!1 String)
(assert (= var2897!1 (str.++ var2897 var639)))
(assert true)
(define-const var3861 String (append/672562846 var74 ":")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var74!1 String)
(assert (= var74!1 (str.++ var74 ":")))
(define-const var2497 (Array Int String) (utf8s/-1693839518 var732)) ; Statement: $r6 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(define-const var2293 Int (+ var3909 2)) ; Statement: $i3 = i1 + 2 
(assert true)
(define-const var393 Int (readValue/-1551687558 var732 var2293)) ; Statement: $i4 = specialinvoke r0.<lombok.launch.ClassFileMetaData: int readValue(int)>($i3) 
(define-const var564 String (select var2497 var393)) ; Statement: $r7 = $r6[$i4] 
(assert true)
;(assert (append/672562846 var3861 var564)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3861!1 String)
(assert (= var3861!1 (str.++ var3861 var564)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {offsets/-1693839518=([lombok.launch.ClassFileMetaData], int[]), utf8s/-1693839518=([lombok.launch.ClassFileMetaData], java.lang.String[]), readValue/-1551687558=([lombok.launch.ClassFileMetaData, int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3223=lombok.launch.ClassFileMetaData, var732=r0, var2897=r2, var1109=i0, var3327=$r1, var3909=i1, var2957=$r3, var243=$i2, var639=$r4, var74=$r5, var3861=$r8, var2497=$r6, var2293=$i3, var393=$i4, var564=$r7}
; {lombok.launch.ClassFileMetaData=var3223, r0=var732, r2=var2897, i0=var1109, $r1=var3327, i1=var3909, $r3=var2957, $i2=var243, $r4=var639, $r5=var74, $r8=var3861, $r6=var2497, $i3=var2293, $i4=var393, $r7=var564}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r0 := @this: lombok.launch.ClassFileMetaData;	r2 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$r1 = r0.<lombok.launch.ClassFileMetaData: int[] offsets>;	i1 = $r1[i0];	$r3 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$i2 = specialinvoke r0.<lombok.launch.ClassFileMetaData: int readValue(int)>(i1);	$r4 = $r3[$i2];	$r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r6 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$i3 = i1 + 2;	$i4 = specialinvoke r0.<lombok.launch.ClassFileMetaData: int readValue(int)>($i3);	$r7 = $r6[$i4];	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	return
;block_num 1