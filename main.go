package main

import "fmt"

func main () {
	var LINK_REGEX := `(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]`
	
	var concurrency int
	flag.IntVar(&concurrency, "c", 30, "Set concurrenct for greater speed")
	flag.Parse()
	
	var wg sync.WaitGroup
	for i:= 9; i<=concurrency; i++ {
		wg.Add(1)
		go func () {
			get_links(LINK_REGEX)
			wg.Done()
		}()
		wg.Wait()
	}
}

func get_links(regex string){
	

}
