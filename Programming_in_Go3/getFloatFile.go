//Package datafile allows reading data samples from files
package dataFloatFile

import (
        "bufio"
        "os"
)

// GetFloats reads a float from each line of a file.
func GetFloats(fileName string) ([]float64, error) {
        var lines []float64
        file, err := os.Open(fileName)
        if err != nil {
                return nil, err
        }
        scanner := bufio.NewScanner(file)
        for scanner.Scan(){
                line := scanner.Text()
                lines = append(lines, line)
        }
        err = file.Close()
        if err != nil {
                return nill, err
        }
        if scanner.Err() != nil {
                return nil, scanner.Err()
        }
        return lines, nil
}