(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offsets/-1693839518 (var666) (Array Int Int))
(declare-fun readValue/-1551687558 (var666 Int) Int)
(declare-fun getClassName/732623544 (var666 Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendNameAndType/-1372149902 (var666 String Int) void)
(declare-const null-var666 var666)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1773 var666) ; Statement: r0 := @this: lombok.launch.ClassFileMetaData 
(assert (not (= var1773 null-var666)))
(declare-const var1169 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1169 null-String)))
(declare-const var1640 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1640 null-Int)))
(define-const var2465 (Array Int Int) (offsets/-1693839518 var1773)) ; Statement: $r1 = r0.<lombok.launch.ClassFileMetaData: int[] offsets> 
(define-const var1666 Int (select var2465 var1640)) ; Statement: i1 = $r1[i0] 
(assert true)
(define-const var1381 Int (readValue/-1551687558 var1773 var1666)) ; Statement: $i2 = specialinvoke r0.<lombok.launch.ClassFileMetaData: int readValue(int)>(i1) 
(assert true)
(define-const var957 String (getClassName/732623544 var1773 var1381)) ; Statement: $r3 = specialinvoke r0.<lombok.launch.ClassFileMetaData: java.lang.String getClassName(int)>($i2) 
(assert true)
(define-const var3131 String (append/672562846 var1169 var957)) ; Statement: $r4 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1169!1 String)
(assert (= var1169!1 (str.++ var1169 var957)))
(assert true)
;(assert (append/672562846 var3131 ".")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3131!1 String)
(assert (= var3131!1 (str.++ var3131 ".")))
(define-const var1291 Int (+ var1666 2)) ; Statement: $i3 = i1 + 2 
(assert true)
(define-const var2777 Int (readValue/-1551687558 var1773 var1291)) ; Statement: $i4 = specialinvoke r0.<lombok.launch.ClassFileMetaData: int readValue(int)>($i3) 
(assert true)
;(assert (appendNameAndType/-1372149902 var1773 var1169!1 var2777)) ; Statement: specialinvoke r0.<lombok.launch.ClassFileMetaData: void appendNameAndType(java.lang.StringBuilder,int)>(r2, $i4) 

(declare-const var1773!1 var666)
(declare-const var1169!2 String)
(declare-const var2777!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {offsets/-1693839518=([lombok.launch.ClassFileMetaData], int[]), readValue/-1551687558=([lombok.launch.ClassFileMetaData, int], int), getClassName/732623544=([lombok.launch.ClassFileMetaData, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendNameAndType/-1372149902=([lombok.launch.ClassFileMetaData, java.lang.StringBuilder, int], void)}
; {var666=lombok.launch.ClassFileMetaData, var1773=r0, var1169=r2, var1640=i0, var2465=$r1, var1666=i1, var1381=$i2, var957=$r3, var3131=$r4, var1291=$i3, var2777=$i4}
; {lombok.launch.ClassFileMetaData=var666, r0=var1773, r2=var1169, i0=var1640, $r1=var2465, i1=var1666, $i2=var1381, $r3=var957, $r4=var3131, $i3=var1291, $i4=var2777}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: lombok.launch.ClassFileMetaData;	r2 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$r1 = r0.<lombok.launch.ClassFileMetaData: int[] offsets>;	i1 = $r1[i0];	$i2 = specialinvoke r0.<lombok.launch.ClassFileMetaData: int readValue(int)>(i1);	$r3 = specialinvoke r0.<lombok.launch.ClassFileMetaData: java.lang.String getClassName(int)>($i2);	$r4 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$i3 = i1 + 2;	$i4 = specialinvoke r0.<lombok.launch.ClassFileMetaData: int readValue(int)>($i3);	specialinvoke r0.<lombok.launch.ClassFileMetaData: void appendNameAndType(java.lang.StringBuilder,int)>(r2, $i4);	return
;block_num 1