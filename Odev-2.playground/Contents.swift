import UIKit

class Odev2{
    
    func derece(santigrat:Double) -> Double {
        let fahrenheit = santigrat * (1.8) + 32
        return fahrenheit
    }
    
    func dikdortgen(uzunKenar:Int,kisaKenar:Int) {
       print("Dikdörtgen Çevresi : \(2 * (uzunKenar + kisaKenar))")
    }
    
    func faktoriyel(sayi:Int) -> Int {
        
        var sonuc:Int = 1
        
            if sayi == 0 {
                return 1
            }else{
                for i in 1...sayi{
                    sonuc = sonuc * i
                }
            }
            return sonuc
    }
    
    func harf_sayisi(kelime:String,harf:Character) -> Int {
        
        var sonuc:Int = 0
        
        for i in kelime.indices {
            
            if kelime[i] == harf {
                sonuc = sonuc + 1
            }
        }
        return sonuc
    }
    
    func ic_acilar_toplami(kenarSayisi:Int) -> Int {
        var toplam:Int = 0
        toplam = (kenarSayisi - 2) * 180
        return toplam
    }
    
    //Girilen gün sayısına göre maaş hesabı
    func maas_hesabi(gunSayisi:Int) -> Int {
        var maas:Int = 0

        for i in 1...gunSayisi{
            if i <= 20 {
                maas = gunSayisi * 80
            }else{
                maas = ((gunSayisi - 20) * 160) + 20*80
            }
        }
        return maas
    }
    
    //Kota miktarına göre ücret hesaplama
    func faturaHesaplama(kota:Int) -> Int{
        var fatura:Int = 0
        if kota <= 50 {
            return 100
        }else{
            fatura = ((kota - 50) * 4) + 100
        }
        return fatura
    }
    
    
}

let dereceHesaplama = Odev2()
print("Fahreneit : \(dereceHesaplama.derece(santigrat: 34))")

let dikdortgenCevre = Odev2()
dikdortgenCevre.dikdortgen(uzunKenar: 3, kisaKenar: 2)

var faktoriyelHesaplama = Odev2()
print("Sonuc : \(faktoriyelHesaplama.faktoriyel(sayi: 3))")

var harfSayisi = Odev2()
print("Kelime içindeki harf sayısı : \(harfSayisi.harf_sayisi(kelime: "UpSchool", harf: "S"))")

var icAciToplam = Odev2()
print("İç açılar toplamı : \(icAciToplam.ic_acilar_toplami(kenarSayisi: 6))")

var maasHesabi = Odev2()
print("Maaş Hesabı : \(maasHesabi.maas_hesabi(gunSayisi: 20))")

var fatura = Odev2()
print("İnternet Faturası : \(fatura.faturaHesaplama(kota: 49))")



