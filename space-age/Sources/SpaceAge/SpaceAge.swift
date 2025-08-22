class SpaceAge {
  private let seconds: Double
  
  init(_ seconds: Double) {
    self.seconds = seconds
  }
  
  // 地球年常數：365.25 天 = 31,557,600 秒
  private let earthYearInSeconds: Double = 31_557_600
  
  // 各行星的軌道週期（以地球年為單位）
  private let mercuryOrbitalPeriod: Double = 0.2408467
  private let venusOrbitalPeriod: Double = 0.61519726
  private let earthOrbitalPeriod: Double = 1.0
  private let marsOrbitalPeriod: Double = 1.8808158
  private let jupiterOrbitalPeriod: Double = 11.862615
  private let saturnOrbitalPeriod: Double = 29.447498
  private let uranusOrbitalPeriod: Double = 84.016846
  private let neptuneOrbitalPeriod: Double = 164.79132
  
  // 計算指定行星年齡的私有方法
  private func ageOnPlanet(orbitalPeriod: Double) -> Double {
    let earthYears = seconds / earthYearInSeconds
    return earthYears / orbitalPeriod
  }
  
  // 各行星的年齡屬性
  var onEarth: Double {
    return ageOnPlanet(orbitalPeriod: earthOrbitalPeriod)
  }
  
  var onMercury: Double {
    return ageOnPlanet(orbitalPeriod: mercuryOrbitalPeriod)
  }
  
  var onVenus: Double {
    return ageOnPlanet(orbitalPeriod: venusOrbitalPeriod)
  }
  
  var onMars: Double {
    return ageOnPlanet(orbitalPeriod: marsOrbitalPeriod)
  }
  
  var onJupiter: Double {
    return ageOnPlanet(orbitalPeriod: jupiterOrbitalPeriod)
  }
  
  var onSaturn: Double {
    return ageOnPlanet(orbitalPeriod: saturnOrbitalPeriod)
  }
  
  var onUranus: Double {
    return ageOnPlanet(orbitalPeriod: uranusOrbitalPeriod)
  }
  
  var onNeptune: Double {
    return ageOnPlanet(orbitalPeriod: neptuneOrbitalPeriod)
  }
}
